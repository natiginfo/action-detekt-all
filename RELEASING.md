# Releasing

## Versioning

This action uses its own semantic versioning (`v3.x.y`), decoupled from detekt releases. The `v3` floating tag always points to the latest `3.x.y` release.

Release when: action behaviour changes, new inputs added, bugs fixed.

## Creating a Release

 1. Update `action.yml` if needed (e.g. bump `actions/setup-java` version).
 2. Update `README.md` examples if any inputs changed.
 3. `git checkout -b release-vX.Y.Z`
 4. Commit changes using the `commit` skill.
 5. `git tag -a vX.Y.Z -m "Version vX.Y.Z"`
 6. Move the floating major tag: `git tag -fa v3 -m "Update v3 to vX.Y.Z"`
 7. `git push && git push --tags --force`
 8. Navigate to [releases](https://github.com/natiginfo/action-detekt-all/releases) and publish the draft release.
