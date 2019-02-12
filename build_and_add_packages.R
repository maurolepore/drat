# Functions ----

delete_PACKAGES <- function(path) {
  fs::file_delete(fs::dir_ls(path, regexp = "PACKAGES"))
}

write_PACKAGES_src <- function(dir = path_src()) {
  tools::write_PACKAGES(dir = dir, type = "source")
}

write_PACKAGES_mac <- function(dir = path_mac()) {
  tools::write_PACKAGES(dir = dir, type = "mac.binary")
}

write_PACKAGES_win <- function(dir = path_win()) {
  tools::write_PACKAGES(dir = dir, type = "win.binary")
}

this_r_version <- function() {
  paste0(R.version$major, ".", pull_minor(), collapse = ".")
}

pull_minor <- function() {
  strsplit(R.version$minor, ".", fixed = TRUE)[[1]][[1]]
}

path_src <- function() {
  here::here("src", "contrib")
}

path_win <- function() {
  here::here("bin", "windows", "contrib", this_r_version())
}

path_mac <- function(mac_version = "el-capitan") {
  here::here("bin", "macosx", mac_version, "contrib", this_r_version())
}



build_and_add_source <- function(path, repodir = ".") {
  drat::insertPackage(devtools::build(path, binary = FALSE), repodir = repodir)
}

build_and_add_binary <- function(path, repodir = ".") {
  drat::insertPackage(devtools::build(path, binary = TRUE), repodir = repodir)
}

# Do ----

build_and_add_source("../fgeo.krig")

build_and_add_binary("../fgeo.krig")

# TODO: Archive
drat::archivePackages(".")

# TODO: Build binary of other os at https://builder.r-hub.io/
# Add
drat::insertPackage(
  "C:/Users/LeporeM/Downloads/fgeo_1.1.2.tgz",
  repodir = "."
)

# TODO: WAIT A FEW SECONDS UNTIL ALL FILES APPEAR ON THE GIT TAB


# TODO: Knit README

# TODO: Push origin and upstream

# Test
# install.packages("fgeo", repos = "https://maurolepore.github.io/drat/")
