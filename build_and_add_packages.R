# Functions ----

build_and_add_source <- function(path, repodir = ".") {
  drat::insertPackage(devtools::build(path, binary = FALSE), repodir = repodir)
}

build_and_add_binary <- function(path, repodir = ".") {
  drat::insertPackage(devtools::build(path, binary = TRUE), repodir = repodir)
}

# Do ----

build_and_add_source("../fgeo.plot")

build_and_add_binary("../fgeo.plot")

# TODO: Archive
drat::archivePackages(".")

# TODO: Build binary of other os at https://builder.r-hub.io/
# Add
drat::insertPackage(
  "C:/Users/LeporeM/Downloads/fgeo.plot_1.1.3.tgz",
  repodir = "."
)

# TODO: WAIT A FEW SECONDS UNTIL ALL FILES APPEAR ON THE GIT TAB


# TODO: Knit README

# TODO: Push origin and upstream

# Test
# install.packages("fgeo.plot", repos = "https://forestgeo.github.io/drat/")
