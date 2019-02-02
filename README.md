
This is a CRAN-like repository serving source and binary versions of
selected R-packages from <https://forestgeo.github.io/>.

### Example

Setup the “repos” option to include this repository.

    options(
      repos = c(getOption("repos"), forestgeo = "https://forestgeo.github.io/drat")
    )

You can now install packages as usual. For
    example:

    Installing package into 'C:/Users/LeporeM/Documents/R/win-library/3.5'
    (as 'lib' is unspecified)

    package 'fgeo' successfully unpacked and MD5 sums checked
    
    The downloaded binary packages are in
        C:\Users\LeporeM\AppData\Local\Temp\1\Rtmpy4OylK\downloaded_packages

You can also update all packages with:

``` r
update.packages()
```

Or update only the packages from this repository with:

``` r
update.packages(repos = "https://forestgeo.github.io/drat")
```

### Latest source packages

(Earlier source packages are archived.)

    fgeo_1.1.1.tar.gz
    fgeo.x_1.1.0.tar.gz
    fgeo.tool_1.2.1.tar.gz
    fgeo.plot_1.1.1.tar.gz
    fgeo.krig_1.0.0.tar.gz
    fgeo.analyze_1.1.3.tar.gz
    fgeo.analyze_1.1.2.tar.gz

### All binary packages for windows

    fgeo_1.1.1.zip
    fgeo_1.1.0.zip
    fgeo_1.0.1.zip
    fgeo.x_1.1.0.zip
    fgeo.x_1.0.1.zip
    fgeo.tool_1.2.1.zip
    fgeo.tool_1.2.0.zip
    fgeo.tool_1.1.0.zip
    fgeo.tool_1.0.3.zip
    fgeo.plot_1.1.1.zip
    fgeo.plot_1.1.0.zip
    fgeo.plot_1.0.4.zip
    fgeo.krig_1.0.0.zip
    fgeo.analyze_1.1.3.zip
    fgeo.analyze_1.1.2.zip
    fgeo.analyze_1.1.1.zip
    fgeo.analyze_1.0.3.zip

### All binary packages for macosx

    fgeo_1.1.1.tgz
    fgeo_1.1.0.tgz
    fgeo.x_1.1.0.tgz
    fgeo.tool_1.2.1.tgz
    fgeo.tool_1.2.0.tgz
    fgeo.tool_1.1.0.tgz
    fgeo.plot_1.1.1.tgz
    fgeo.plot_1.1.0.tgz
    fgeo.krig_1.0.0.tgz
    fgeo.analyze_1.1.2.tgz
    fgeo.analyze_1.1.1.tgz
    fgeo.analyze_1.1.0.tgz

-----

“Drat” R Archive Template created by the [drat
package](https://CRAN.R-project.org/package=drat).
