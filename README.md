Ensure the GHCUP tool is installed before running this project. Building the project is necessary to execute both the code and tests.

To build the project, execute the following commands:

```bash
cabal clean && cabal configure --enable-tests && cabal build
```

To execute the test cases for the Hanoi Algorithm, use the following command:

```bash
cabal test
```
