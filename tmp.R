build_and_add_package <- function(path = "../fgeo", repodir = ".", binary = FALSE) {
  drat::insertPackage(devtools::build(path, binary = binary), repodir = repodir)
}
build_and_add_package("../fgeo.analyze", binary = FALSE)
build_and_add_package("../fgeo.analyze", binary = TRUE)

# install.packages("fgeo", repos = "https://maurolepore.github.io/drat/")

# # drat::insertPackage("../fgeo.x_1.1.0.tgz", repodir = ".")
drat::insertPackage(
  "C:/Users/LeporeM/Downloads/fgeo.analyze_1.1.1.tgz",
  repodir = "."
)
