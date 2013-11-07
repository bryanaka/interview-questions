Fibonacci Sequence: Ruby
===============================================================================


Mindset
-------------------------------------------------------------------------------

There are really two or three ways to accomplish Fibonacci.

- Recursively
- Iteratively
- Recursively, Optimized

The Optimized version of the recursive call basically caches values of a given 
fibonacci function call, so that it doesn't have to call it more than once. This is also known as the Memorization pattern.

                F(5) = F(5-1) + F(5-2)
                         F(4) + F(3)
                  F(3) + F(2) + F(2) + F(1)
    F(2) + F(1) + F(1) + F(0) + F(1) + F(0) + 1
      F(1) + F(0) + 1 + 1 + 0 + 1 + 0 + 1
                            1 + 4 = 5

This shows that Fibonacci makes 15 calls to get 5

contrast this with the cached version that only solves each fibbonacci once, limiting the amount of calls it has to do.

You can also use tail-end recursion call optimization (TCO), but not all 
lanugages support this as an optimization.
