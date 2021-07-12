repos <- c(
  "achubaty/amc",
  "PredictiveEcology/CBMutils",
  "PredictiveEcology/fireSenseUtils",
  "PredictiveEcology/LandR",
  "PredictiveEcology/LandWebUtils",
  "PredictiveEcology/map",
  "PredictiveEcology/pemisc",
  "PredictiveEcology/peutils",
  "PredictiveEcology/quickPlot",
  "PredictiveEcology/Require",
  "PredictiveEcology/reproducible",
  "PredictiveEcology/SpaDES.core",
  "PredictiveEcology/SpaDES.install",
  "PredictiveEcology/SpaDES.tools",
  "PredictiveEcology/usefulFuns"
)
gh_prefix <- "https://github.com/"

df <- data.frame(
  package = basename(repos),
  url = paste0(gh_prefix, repos)#,
  #branch = "development"
)
jsonlite::write_json(df, 'packages.json', pretty = TRUE)
