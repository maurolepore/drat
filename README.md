
This is a CRAN-like repository serving source and binary versions of
released [**fgeo** packages](https://forestgeo.github.io/fgeo/).

## Example

Install the latest stable version of all [fgeo
packages](https://forestgeo.github.io/fgeo/) with:

``` r
these_repos <- c(getOption("repos"), "https://forestgeo.github.io/drat")
install.packages("fgeo", repos = these_repos)
```

Update to the latest stable version of all [fgeo
packages](https://forestgeo.github.io/fgeo/) with:

``` r
these_repos <- c(getOption("repos"), "https://forestgeo.github.io/drat")
update.packages(repos = these_repos)
```

## Available source packages:

    #> fgeo.analyze_1.0.3.tar.gz
    #> fgeo.plot_1.0.4.tar.gz
    #> fgeo.tool_1.0.3.tar.gz
    #> fgeo.x_1.0.1.tar.gz
    #> fgeo_1.0.1.tar.gz

## Available binary packages for R 3.5 on Windows:

    #> fgeo.analyze_1.0.3.zip
    #> fgeo.plot_1.0.4.zip
    #> fgeo.tool_1.0.3.zip
    #> fgeo.x_1.0.1.zip
    #> fgeo_1.0.1.zip

-----

‘Drat’ R Archive Template created by the [drat
package](https://CRAN.R-project.org/package=drat)
