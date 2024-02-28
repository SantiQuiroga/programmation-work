Ensure the GHCUP tool is installed before running this project. Building the project is necessary to execute both the code and tests.

To build and run the project, execute the following commands:

```bash
stack build && stack run
```

To execute the test cases for the Hanoi Algorithm, use the following command:

```bash
stack test
```

To run the exercises from GHCi follow these steps:

1. Open your terminal.

2. Navigate to the directory where the exercises source code files are located. 

```bash
cd lib/BookExercises/
```

3. Once you are in the correct directory, type:
 
```bash
ghci
:l NameOfSourceCodeFile.hs
```

4. GHCi will load the code and provide you with a prompt where you can interactively execute the functions.

5. To run a function, simply type its name followed by any required arguments. 

```bash
BookExercises.NameOfSourceCodeFile.NameOfFunction Arguments
```

6. To exit press Ctrl + z.

Repeat the process if you want to run another function.
