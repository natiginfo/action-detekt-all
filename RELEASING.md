# Releasing

 Pull requests for new releases are automatically made by [Create Release workflow](./.github/workflows/create_new_release.yml).

If you want to make a new release manually, you can follow the steps below:

 1. If there is a new release of [detekt](https://github.com/detekt/detekt/releases), update `Dockerfile` and `README.md` with correct version number. Make sure you do not add `v` prefix.
 2. `git checkout -b RELEASE-vX.Y.Z` (where X.Y.Z is the new version)
 3. `git commit -am "Prepare for release X.Y.Z."` (where X.Y.Z is the new version)
 4. `git tag -a X.Y.Z -m "Version X.Y.Z"` (where X.Y.Z is the new version)
 5. `git push && git push --tags`
 6. Create a new pull request on Github for new release branch and merge it to master.
 7. Navigate to the [releases](https://github.com/natiginfo/action-detekt-all/releases) page and publish latest draft release.
