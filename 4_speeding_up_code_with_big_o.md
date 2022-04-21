# Speeding Up Code with Big O
p.37

## Bubble Sort p.38
Sorting algorithms all try to solve the following problem:
Given an array of unsorted numbers, how can we sort them so that then end up in ascending order?

### Algorithm
1. Point to first two consecutive items in an array and compare the first with the second
2. If the two items are out of order, swap them
3. If they are in order, do nothing
4. Increment each pointer's value by 1 to "move them" down the array
5. Repeat steps 2 and 3 until we're at the end of the array (both pointers reach last element)
6. Start over and repeat steps 1-5 until we have an iteration (passthrough) where no changes are made

#### Notes
- As we sort through the array, we don't need to go from start to finish every time- we can know that the end of the array is going to get sorted up to array.length - i where i is the current passthrough number

#### Efficiency
Bubble Sort contains two kinds of steps:
1. Comparison
- Two numbers are compared with one another to determine which is greater
2. Swaps
- Two numbers are swapped with one another in order to sort them

Since we have to compare as well as swap on possibly every step (and we measure efficiency on worst possible case), the Bubble Sort's efficiency is not that great- as the data grows, the steps increase exponentially.

In Big O Notation, we say that Bubble sort is O(N2). Because we are using nested loops, our efficiency is N * N steps, or N2. So, whenever we're using nested loops, our O(N2) alarm bells should be going off.
