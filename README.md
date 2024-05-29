# Predictive Ecology R-Universe

Enables various packages to be automatically built from their GitHub sources, to facilitate installation via `install.packages()`.

Currently, we build from our `development` branches.

See <https://ropensci.org/blog/2021/06/22/setup-runiverse/> for setup information.

## Adding packages

To add a package, simply add its GitHub repo to [`packages.R`](packages.R), and run that script.
This will generate the `packages.json` file that r-universe needs to configure package builds.

**NOTE:** Initially, do not specify a branch, as it needs to be built from `main`/`master` successfully first.
Once the newly added package has been built (usually within the hour), it's usually OK to add the branch information and rebuild the `packages.json` file.
