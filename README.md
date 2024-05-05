# Portfolio
My personal portfolio, made using Swift DocC

## Build Instructions

To build this portfolio, CD to the parent directory of Documentation.docc and run the build script.
```shell
# Builds the portfolio for local use and deployment, then runs a local server to view the portfolio. These two are equivalent.
./build.sh
./build.sh --build all

# Builds the portfolio for local use, then runs a local server to view the portfolio
./build.sh --build local

# Builds the portfolio for deployment, and *does not* run a local server
./build.sh --build deploy

# Skips the build stage, runs the local server to view the portfolio
./build.sh --build none

# Skips the run stage. --norun can be used with --build to configure the build stage.
# --norun is ignored if --build is set to deploy
./build.sh --norun

# Builds the deployment version, then commits the changes to the repository
./build.sh --commit "Commit message"
```
./
```

Visit http://localhost:8000/documentation/home/ to view the portfolio locally.
If its deployed, visit https://kaitheredninja.github.io/Portfolio/documentation/home to view the portfolio online. Changes may take a while to propagate.

Note that by default, `build.sh` produces TWO versions of the portfolio. 
The first is the one that is hosted locally for debugging, which is gitignored and not included on the github.
The second is the one that is hosted on Github Pages. The local server version is useful for debugging purposes.
