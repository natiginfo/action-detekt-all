# GitHub Action: Detekt All

GitHub Action for running [detekt](https://github.com/detekt/detekt) checks to enforce best practices. Detekt is a static code analysis tool for Kotlin.

## Inputs

| Input | Required | Description |
|---|---|---|
| `detekt-version` | yes | Detekt version to use. No `v` prefix. See [detekt releases](https://github.com/detekt/detekt/releases) |
| `java-distribution` | yes | Java distribution for [actions/setup-java](https://github.com/actions/setup-java#supported-distributions) (e.g. `temurin`, `corretto`, `zulu`) |
| `java-version` | yes | Java version (e.g. `17`, `21`) |
| `args` | no | CLI arguments passed to detekt. See [detekt CLI docs](https://detekt.dev/docs/gettingstarted/cli) |

## Example usage

```yaml
name: detekt

on:
  push:
    branches: [ master ]

jobs:
  detekt:
    runs-on: ubuntu-latest

    steps:
      - name: checkout
        uses: actions/checkout@v4

      - name: detekt
        uses: natiginfo/action-detekt-all@v3
        with:
          detekt-version: '2.0.0-alpha.3'
          java-distribution: 'temurin'
          java-version: '17'
```

## Usage with [CLI parameters](https://detekt.dev/docs/gettingstarted/cli)

```yaml
name: detekt

on:
  push:
    branches: [ master ]

jobs:
  detekt:
    runs-on: ubuntu-latest

    steps:
      - name: checkout
        uses: actions/checkout@v4

      - name: detekt
        uses: natiginfo/action-detekt-all@v3
        with:
          detekt-version: '2.0.0-alpha.3'
          java-distribution: 'temurin'
          java-version: '17'
          args: '--config detekt.yml'
```

## Migrating from v2

Previous versions of this action used `@<detekt-version>` tags (e.g. `@2.0.0-alpha.3`). Starting with `v3`, the action uses its own versioning. Specify the detekt version via the `detekt-version` input instead.

```yaml
# Before
- uses: natiginfo/action-detekt-all@2.0.0-alpha.3
  with:
    args: --config detekt.yml

# After
- uses: natiginfo/action-detekt-all@v3
  with:
    detekt-version: '2.0.0-alpha.3'
    java-distribution: 'temurin'
    java-version: '17'
    args: '--config detekt.yml'
```
