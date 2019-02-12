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
