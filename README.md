# GitHub Action: Detekt All

This action can be used to run [detekt](https://github.com/detekt/detekt) checks to enforce best practices.

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
         uses: natiginfo/action-detekt-all@v1
```
