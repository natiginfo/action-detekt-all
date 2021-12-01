# GitHub Action: Detekt All

GitHub Action for running [detekt](https://github.com/detekt/detekt) checks to enforce best practices. Detekt is a static code analysis tool for Kotlin.

Version of the action is aligned with [detekt versions](https://github.com/detekt/detekt/releases).

## Example usage

```
name: detekt

on:
  push:
    branches: [ master ]

 jobs:
   detekt:
     runs-on: ubuntu-latest

     steps:
       - name: "checkout"
         uses: actions/checkout@v2

       - name: "detekt"
         uses: natiginfo/action-detekt-all@1.19.0
```
## Usage with [CLI parameters](https://detekt.github.io/detekt/cli.html#use-the-cli)


```
name: detekt

on:
  push:
    branches: [ master ]

 jobs:
   detekt:
     runs-on: ubuntu-latest

     steps:
       - name: "checkout"
         uses: actions/checkout@v2

       - name: "detekt"
         uses: natiginfo/action-detekt-all@1.19.0
         with:
          args: --fail-fast --config detekt.yml
```

You can check available CLI parameters [here](https://detekt.github.io/detekt/cli.html#use-the-cli)
