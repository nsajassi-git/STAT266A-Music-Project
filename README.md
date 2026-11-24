# STAT 266A Music Project: Has Popular Music Gotten Faster?

An analysis of BPM in Billboard Hot 100 number-one hits from 1958 to 2025, including trends over time and differences across five genre labels.

## Project files

- `MusicMidQuatro.qmd` — **main Quarto runbook**, which imports data, cleans it, plots the results, and fits the regression.
- `MidQAnalysis.R` — optional companion script for interactive R analysis; it does not have to run before the Quarto report.
- `data/README.md` — data sources, provenance, and licenses.
- `AGENTS.md` — AI-assistance rules.
- `STYLE.md` — coding and writing conventions.
- `renv.lock`, `.Rprofile`, `renv/activate.R`, and `renv/settings.json` — R environment configuration files used to restore the project's package dependencies.

## Reproduce the report from a fresh clone

1. Clone or download this repository and open the project folder in Positron.
2. In the R console, run `renv::restore()` to install the recorded package dependencies.
3. In the terminal, run:

   quarto render MusicMidQuatro.qmd

4. Open the generated `MusicMidQuatro.html` file.

An internet connection is required to download the public Billboard dataset.

## Reproducibility verification

On November 24, 2026, the project was tested in a separate, freshly extracted copy of the repository using R 4.6.1.

- `renv::restore()` successfully installed the project dependencies.
- `renv::status()` reported no issues.
- `quarto render MusicMidQuatro.qmd` completed successfully and generated the HTML report.

### One-time setup by project author

With this repository folder open in Positron, run these commands in the R console if `renv` has not already been initialized:

```r
install.packages("renv") # only if it is not installed
renv::init(bare = TRUE)
renv::install(c("readr", "ggplot2", "knitr", "rmarkdown"))
renv::snapshot(prompt = FALSE)
renv::status()
```

If R prompts for a restart after initialization, restart R and continue the remaining commands. Commit `renv.lock`, `renv/activate.R`, and, if created, `renv/settings.json`. Do not commit the `renv/library/` folder. Then clone into **a different folder**, run `renv::restore()`, and render the Quarto file there.

## Data and results

The report downloads TidyTuesday's August 26, 2025 `billboard.csv` instead of storing a modified raw CSV. See `data/README.md` for sources, credits, and license notes.

The earlier mid-quarter render reported 1,177 rows and 105 variables, 2 missing BPM values, and 88 missing genre labels. The main analysis uses 1,175 rows after excluding records missing BPM or year. The five exact single-label genres contribute 1,002 rows to the genre boxplot. Each render prints checks that reviewers can compare to these figures.

The preliminary regression showed an estimated increase of about 0.078 BPM per year, but a very small R-squared (about 0.0035). This is an association, not a causal finding. Limitations include a sample restricted to number-one hits, overlapping genre labels, and unusually low BPM values.

## AI use

ChatGPT helped brainstorm, organize the Quarto report, and prepare repository documentation. I am responsible for running the code, verifying the results, and reviewing the changes.
