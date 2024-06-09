repos <- c(
  "achubaty/amc@development",
  "RNCan/BioSimClient_R",
  "PredictiveEcology/CBMutils@development",
  "s-u/fastshp",
  "PredictiveEcology/fireSenseUtils@development",
  "rspatial/geodata", ## TODO: temporaril(?) removed from CRAN May 2024
  "CWFC-CCFB/J4R",
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
  "PredictiveEcology/Require@simplify4", ## TODO: switch to development once merged
  "PredictiveEcology/reproducible@development",
  "cran/rgdal", ## removed from CRAN October 2023
  "cran/rgeos", ## removed from CRAN October 2023
  "PredictiveEcology/scfmutils@development",
  "cran/SDMTools",
  "PredictiveEcology/SpaDES@development",
  "PredictiveEcology/SpaDES.addins@development",
  "PredictiveEcology/SpaDES.core@development",
  "PredictiveEcology/SpaDES.experiment@development",
  "PredictiveEcology/SpaDES.project@development",
  "PredictiveEcology/SpaDES.shiny@development",
  "PredictiveEcology/SpaDES.tools@development",
  "PredictiveEcology/usefulFuns@development",
  "PredictiveEcology/pemisc@development",
  "PredictiveEcology/pedev@development",
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
df[df$package == "BioSimClient_R", ]$package <- "BioSIM"
jsonlite::write_json(df, 'packages.json', pretty = TRUE)
