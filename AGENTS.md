# AGENTS.md — AI guidance

AI help is permitted for the Billboard research project with accurate disclosure. It is **not permitted** for the in-class peer review written about another student's project.

Allowed project assistance includes explanations, debugging suggestions, drafting code or documentation, and pointing out questionable interpretations. The student must review all suggestions, run the code in Positron, and confirm the outputs independently.

Rules for any assisting agent:

- Never invent data values, source licenses, regression results, dependency versions, or claims that a fresh-clone test passed.
- Do not silently alter raw data, remove unusual observations, or change research questions or genre definitions.
- Keep the code understandable and close to STAT 266A course techniques; avoid extra tools or languages without a clear reason.
- No personal file paths, credentials, hidden saved R objects, or private data.
- Check sample sizes after filtering and make all stated numerical results consistent with the rendered report.
- Do not fabricate `renv.lock`; generate it using real package installations in R.
- Record meaningful AI use in the report and make sure the author can defend each step.

A GitHub commit is not evidence that the report was tested. The author must check the changed files and complete the fresh-clone render before saying it is reproducible.
