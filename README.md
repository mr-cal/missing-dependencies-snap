# Overview

Tests dependencies resolution of [snapcraft](https://github.com/snapcore/snapcraft)

# Details
## Application
Snaps a simple C++ file that loads libpng and measures the dimensions of a png image with:
`png-dimensions-20 <png-image>`
## Snap
- `stage-packages` is purposely missing to force snapcraft to resolve missing dependencies.
- Uncommenting `override-build` is a good test of dependency resolution.
  - It installs `usrmerge` and creates symlinks to some libraries, like libpng.
- Uncommenting `stage-packages` should make the `png-dimensions` program function.
## Runner
`runner.sh` builds and runs the snaps on core18 and core20 for easy debugging.
