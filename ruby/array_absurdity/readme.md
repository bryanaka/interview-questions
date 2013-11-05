Array Absurdity
===============================================================================

Challenge Description
-------------------------------------------------------------------------------

Imagine we have an immutable array of size N which we know to be filled with integers ranging from 0 to N-2, inclusive. 

Suppose we know that the array contains exactly one duplicated entry and that duplicate appears exactly twice. Find the duplicated entry. 

For bonus points, ensure your solution has constant space and time proportional to N

### Input sample

Your program should accept as its first argument a path to a filename. Each line in this file is one test case. Ignore all empty lines. Each line begins with a positive integer(N) i.e. the size of the array, then a semicolon followed by a comma separated list of positive numbers ranging from 0 to N-2, inclusive.

    5;0,1,2,3,0
    20;0,1,10,3,2,4,5,7,6,8,11,9,15,12,13,4,16,18,17,14

### Output sample

    0
    4

Mindset
-------------------------------------------------------------------------------

### Business Requirements

__Needs to:__

- Find a duplicate in an array 
- Needs to read in a file
- Needs to ignore empty lines in the file
- Do this in O(n)

__Givens:__

- Length (N) is known at the beginning
- The maximum is always going to be N-2.
- There will be no negative numbers
- The array contains exactly one duplicate

### Process

The length of the array is known at the beginning of the input, so we are going 
to allocate that size array at the start of the program.

The maximum value is always going to be N-2, and the minimum is 0. Which means 
we can just place the values into the array according to the index. e.g. value 
of 5 goes into index 5.

We need an algorithm that is O(n). My idea was to check if the array at the 
index N is nil (O(1)), and if it is, insert value N there (O(1) because space was already alocated at the beginning of the program). However, if a value is 
already there, then it is a duplicate and we can end the program. Worse case is that the duplicate is at the very end of the list. This is O(n).

