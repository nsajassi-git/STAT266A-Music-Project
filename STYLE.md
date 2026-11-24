# STYLE.md — Project code conventions

- Prefer descriptive R objects such as `billboard`, `songs`, `genre_songs`, and `tempo_model`.
- Use basic R subsetting, `readr`, `ggplot2`, and `lm()` where possible. No pipes are required for the initial analysis.
- Comments should explain **why** a step is needed, especially missing-data decisions and genre filters.
- Check `nrow()`, `is.na()`, and `nobs()` after important cleaning and modeling steps.
- Avoid `setwd()`, absolute paths, and dependencies on R objects from an old session.
- Keep `MusicMidQuatro.qmd` self-contained and runnable from the project folder. `MidQAnalysis.R` is optional and not a prerequisite.
- Use readable figure titles, axis labels and captions. Describe what a plot shows, not what one hoped it would show.
- Interpret the slope in BPM/year and report R-squared in context; do not infer causation.
- Document unusual data, multi-genre labels, and limitations rather than silently hiding them.
- Do not commit machine-specific R libraries, temporary files, or private credentials.
