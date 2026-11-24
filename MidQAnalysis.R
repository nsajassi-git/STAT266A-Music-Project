
#STAT 266A
# Music Project mid-quarter analysis

library(readr)
library(ggplot2)

#Loading data from Billboard Charts
billboard <- read_csv(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2025/2025-08-26/billboard.csv",
  show_col_types = FALSE
)

#Checking the data
dim(billboard)
head(billboard[, c("song", "artist", "date", "bpm", "cdr_genre")], 6)
sum(is.na(billboard$bpm))
sum(is.na(billboard$cdr_genre))

#Cleaning the data (removing rows with missing BPM or year)
billboard$year <- as.integer(format(billboard$date, "%Y"))
songs <- billboard[!is.na(billboard$bpm) & !is.na(billboard$year), ]

nrow(songs)
range(songs$year)
summary(songs$bpm)

#Figure 1 - BPM by year
ggplot(songs, aes(x = year, y = bpm)) +
  geom_point(alpha = 0.45, size = 1.6) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(title = "Tempo of Billboard #1 hits over time",
       x = "Year", y = "Tempo (BPM)") +
  theme_minimal()

#Figure 2 - BPM by genre
main_genres <- c("Pop", "Rock", "Funk/Soul",
                 "Electronic/Dance", "Hip Hop")

genre_songs <- songs[songs$cdr_genre %in% main_genres, ]

table(genre_songs$cdr_genre)
nrow(genre_songs)

ggplot(genre_songs, aes(x = cdr_genre, y = bpm)) +
  geom_boxplot() +
  labs(title = "Tempo distributions across major genres",
       x = "Genre", y = "Tempo (BPM)") +
  theme_minimal()

#Linear regression - BPM explained by year
songs$years_since_1958 <- songs$year - 1958

tempo_model <- lm(bpm ~ years_since_1958, data = songs)

summary(tempo_model)
nobs(tempo_model)

#Residual - observed BPM minus predicted BPM
songs$resid <- residuals(tempo_model)

ggplot(songs, aes(x = fitted(tempo_model), y = resid)) +
  geom_point() +
  geom_hline(yintercept = 0) +
  labs(title = "Residuals from the BPM regression",
       x = "Predicted BPM", y = "Residuals") +
  theme_minimal()
