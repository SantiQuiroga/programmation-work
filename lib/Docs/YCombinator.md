The Y combinator is a higher-order function in functional programming that allows for the creation of anonymous recursive functions. In Haskell, the Y combinator can be defined using the fixed-point operator (`fix`). Here are the steps on how the Y combinator works:

### Steps on how the Y combinator works:

1. **Understanding the Need for Y Combinator:**
   - In Haskell, anonymous functions are non-recursive by default. However, there are scenarios where you might need a recursive function without explicitly naming it.

2. **Defining the Y Combinator:**
   - The `fix` function in Haskell provides a fixed point of a function, allowing for recursion.

3. **Applying the Y Combinator:**
   - To define a recursive function using the Y combinator, you can pass your recursive function as an argument to `yCombinator`. The Y combinator will then provide a version of your function where recursion is allowed.
