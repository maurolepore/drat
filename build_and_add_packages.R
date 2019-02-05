# Functions ----

build_and_add_source <- function(path, repodir = ".") {
  drat::insertPackage(devtools::build(path, binary = FALSE), repodir = repodir)
}

build_and_add_binary <- function(path, repodir = ".") {
  drat::insertPackage(devtools::build(path, binary = TRUE), repodir = repodir)
}

# Do ----

build_and_add_source("../fgeo.x")

build_and_add_binary("../fgeo.x")

# TODO: Build binary of other os at https://builder.r-hub.io/
# Add
drat::insertPackage(
  "C:/Users/LeporeM/Downloads/fgeo.x_1.1.1.tgz",
  repodir = "."
)

# TODO: WAIT A FEW SECONDS UNTIL ALL FILES APPEAR ON THE GIT TAB

# TODO: Archive

drat::archivePackages(".")

# TODO: Knit README

# TODO: Push

# Test
# install.packages("fgeo", repos = "https://maurolepore.github.io/drat/")
