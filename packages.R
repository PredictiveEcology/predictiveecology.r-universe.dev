repos <- c(
  "achubaty/amc@development",
  "PredictiveEcology/CBMutils@development",
  "s-u/fastshp",
  "PredictiveEcology/fireSenseUtils@development",
  "PredictiveEcology/LandR@development",
  "PredictiveEcology/LandWebUtils@development",
  "PredictiveEcology/NetLogoR@development",
  "ropensci/NLMR", ## TODO: cran version once v1.1.1 or greater available
  "PredictiveEcology/map@development",
  "PredictiveEcology/pemisc@development",
  "PredictiveEcology/peutils@development",
  "PredictiveEcology/quickPlot@development",
  "cran/RandomFields", ## removed from CRAN spring 2022
  "cran/RandomFieldsUtils",
  "PredictiveEcology/Require@development",
  "PredictiveEcology/reproducible@development",
  "PredictiveEcology/SpaDES.addins@development",
  "PredictiveEcology/SpaDES.core@development",
  "PredictiveEcology/SpaDES.experiment@development",
  "PredictiveEcology/SpaDES.project@transition", ## TODO: switch to development once merged
  "PredictiveEcology/SpaDES.shiny@development",
  "PredictiveEcology/SpaDES.tools@development",
  "PredictiveEcology/usefulFuns@development",
  "MangoTheCat/visualTest"
)
repos2 <- sapply(repos, function(x) strsplit(x, "@")[[1]][1])
branches <- sapply(repos, function(x) strsplit(x, "@")[[1]][2])
gh_prefix <- "https://github.com/"

df <- data.frame(
  package = basename(repos2),
  url = paste0(gh_prefix, repos2),
  branch = branches,
  row.names = NULL
)
jsonlite::write_json(df, 'packages.json', pretty = TRUE)
