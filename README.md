# Portfolio
My personal portfolio, made using Swift DocC

## Build Instructions

To build this portfolio, CD to the parent directory of Documentation.docc and run the build script.
```shell
# Builds the portfolio for local use and deployment, then runs a local server to view the portfolio. These two are equivalent.
make
make all

# Builds the portfolio for local use, then runs a local server to view the portfolio
make local run

# Builds the portfolio for deployment, and *does not* run a local server
make deploy

# Skips the build stage, runs the local server to view the portfolio
make run

# Builds the deployment version, then commits the changes to the repository
make commit msg="Commit message"
```

Visit http://localhost:8000/documentation/home/ to view the portfolio locally.
If its deployed, visit https://kaitheredninja.github.io/Portfolio/documentation/home to view the portfolio online. Changes may take a while to propagate.

Note that by default, `make` produces TWO versions of the portfolio. 
The first is the one that is hosted locally for debugging, which is gitignored and not included on the github.
The second is the one that is hosted on Github Pages. The local server version is useful for debugging purposes.
