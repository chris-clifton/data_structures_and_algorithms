# Chapter 1: Why Data Structures Matter

## Measuring Speed
We don't measure in terms of time but instead in terms of steps since computers have varying power.

Operation A that takes 5 steps will be faster than Operation B that takes 500 steps on all pieces of hardware.

Speed, time complexity, efficiency, and performance are all used interchangeably here.

# Arrays
## Reading
Reading a value from an array via index is a one-step process and very efficient

## Searching
Searching for a value in an array is X number of steps until it arrives at the desired value.

Computers search arrays one element at a time and this is called a linear search.

## Insertion
Insertion efficiency depends on where you want to insert. Inserting at the end takes one step. Inserting at the beginning or middle takes many steps because we have to shift any data that now needs to come after the value we're inserting. Inserting into the beginning takes the most steps (worst case scenario).

## Deletion
Deletes take multiple steps because, there is one step for deleting the value at a given index, then X steps for shifting all the data down.

For a 500 element array, we'd spend 1 step deleting the element and then 499 shifting data, for a total of 500 steps.  This is N steps.

# Sets
A set is a data structure that does not allow duplicate values.

There are different types of sets but, in an array-based set (which we're using here), is basically just an array that won't allow duplicate values into itself.

Sets are useful when you cant have duplicate data in your program but they arent very efficient.

Inserting into the end of a set, the best-case scenario, is an N + 1. You have to read the value of each element of the set, to make sure the value you want to insert doesnt already exist, and then you have to perform the insert.  So in the case of a 500 element set, you have to read 500 values, then insert 1, making it take 501 steps or N + 1.

In the worst case scenario, which is inserting into the beginning of a set, you have to perform the 500 reads, then shift 500 values, then perform the insert- this is a 2N + 1.

So, sets can be useful (phone books, for example), but this is how you analyze your needs vs. data structures.

# Summary
Data structure choice can make the difference between bearing a heavy load and collapsing under it.
