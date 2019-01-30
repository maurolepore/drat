build_and_add_package <- function(path = "../fgeo", repodir = ".", binary = FALSE) {
  drat::insertPackage(devtools::build(path, binary = binary), repodir = repodir)
}
build_and_add_package("../fgeo.plot", binary = FALSE)
build_and_add_package("../fgeo.plot", binary = TRUE)

# install.packages("fgeo", repos = "https://maurolepore.github.io/drat/")

# # drat::insertPackage("../fgeo.x_1.1.0.tgz", repodir = ".")
drat::insertPackage(
  "C:/Users/LeporeM/Downloads/fgeo.plot_1.1.0.tgz",
  repodir = "."
)
