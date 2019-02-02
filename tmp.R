build_and_add_package <- function(path = "../fgeo",
                                  repodir = ".",
                                  binary = FALSE) {
  drat::insertPackage(devtools::build(path, binary = binary), repodir = repodir)
}

# Source
build_and_add_package("../fgeo.plot", binary = FALSE)
# Windows binary
build_and_add_package("../fgeo.plot", binary = TRUE)
# macosx binary
drat::insertPackage(
  "C:/Users/LeporeM/Downloads/fgeo.analyze_1.1.3.tgz",
  repodir = "."
)
# Update webpage
knitr::knit("README.Rmd")


# Test
# install.packages("fgeo", repos = "https://maurolepore.github.io/drat/")
