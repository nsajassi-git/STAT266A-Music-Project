# Billboard Hot 100 Number Ones - data source

**Source:** TidyTuesday's August 26, 2025 Billboard dataset, based on **Chris Dalla Riva's Billboard Hot 100 Number Ones Database**. TidyTuesday credits Jen Richmond for curating this release.

- Documentation, variable dictionary: https://github.com/rfordatascience/tidytuesday/blob/main/data/2025/2025-08-26/readme.md
- CSV URL used by the report: https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2025/2025-08-26/billboard.csv
- Upstream repository: https://github.com/rfordatascience/tidytuesday

The source covers Billboard number-one songs between August 4, 1958 and January 11, 2025. The key project variables are `date`, `bpm`, and `cdr_genre`; the report also displays `song` and `artist`. Combined genre values such as `Pop;Rock` are possible.

The mid-quarter analysis reported 1,177 rows and 105 columns, including 2 missing BPM values and 88 missing genre labels. The main analysis removes rows missing BPM or year, and the separate genre comparison selects five exact single-label categories. Row counts and missingness are checked again by the Quarto code.

**License:** The TidyTuesday repository includes a [CC0 1.0 license](https://github.com/rfordatascience/tidytuesday/blob/main/LICENSE), but this does not by itself establish that all third-party rights in the underlying data compilation are cleared. This project credits the sources and downloads the public CSV without storing or redistributing a changed raw data file.

**Limitations:** Number-one hits do not represent all music. Tempo can be recorded in half-time or double-time, and genre definitions may overlap. This is an exploratory, not causal, analysis.

