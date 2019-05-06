# Add support for new minor (or greater) version of R ---------------------

# Download the .zip of each realease
# Unzip in Downloads and remove the .zip

path <- fs::dir_ls("~/Downloads/", regexp = "fgeo")
path <- fs::path(path, fs::path_file(path))
path %>%
  purrr::walk(
    ~ drat::insertPackage(devtools::build(.x, binary = TRUE), repodir = ".")
  )

# Adding packages ---------------------------------------------------------

build_and_add_source("../fgeo.krig")

build_and_add_binary("../fgeo.krig")

# TODO: Archive
drat::archivePackages(".")

# TODO: Build binary of other os at https://builder.r-hub.io/
# Add
drat::insertPackage(
  "C:/Users/LeporeM/Downloads/fgeo.krig_1.0.1.tgz",
  repodir = "."
)

# TODO: WAIT A FEW SECONDS UNTIL ALL FILES APPEAR ON THE GIT TAB


# TODO: Knit README

# TODO: Push origin and upstream

# Test
# install.packages("fgeo", repos = "https://maurolepore.github.io/drat/")
