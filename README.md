# Portfolio
My personal portfolio, made using Swift DocC

## Build Instructions

To build this portfolio, CD to the parent directory of Documentation.docc and run
```shell
export DOCC_JSON_PRETTYPRINT="YES"
xcrun docc convert . --transform-for-static-hosting
xcrun docc convert . --transform-for-static-hosting --output-dir docs --hosting-base-path "Portfolio"
cd .docc-build; python3 -m http.server; cd ..
```
Then, visit http://localhost:8000/documentation/home/ to view the portfolio.

Note that this produces TWO versions of the portfolio. The first is the one that is hosted locally for debugging, which is gitignored and not included on the github.
The second is the one that is hosted on Github Pages. The local server version is useful for debugging purposes.
