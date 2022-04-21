# Searching Algorithms

## Binary Search p.24
Basically a computer version of how you would guess a number between 1 and 100. You start with a central value and you eliminate half the remaining values and keep doing this until you arrive at your value.

For an ordered array with 100 elements, a linear search has a maximum number of steps of 100. A binary search has a maximum of 7.
For an ordered array with a million elements, a binary search will find the value in 20 steps.

With linear search, the maximum number of steps is always the number of the elements in the array.
**Every time we double an ordered list, the number of steps it takes to find a value increases by just 1.** p.25

But this doesn't mean you should always use ordered arrays just because searching is faster. For example, if all you are doing is adding to an array, use a regular array because insertion is quicker.

# Sorting Algorithms

## Bubble Sort p.37
1. Point to first two consecutive items in an array and compare the first with the second
2. If the two items are out of order, swap them
3. If they are in order, do nothing
4. Increment each pointer's value by 1 to "move them" down the array
5. Repeat steps 2 and 3 until we're at the end of the array (both pointers reach last element)
6. Start over and repeat steps 1-5 until we have an iteration (passthrough) where no changes are made

### Notes
- As we sort through the array, we don't need to go from start to finish every time- we can know that the end of the array is going to get sorted up to array.length - i where i is the current passthrough number

## Selection Sort
1. Iterate over an array once for every element
2. In this outer loop, create a variable to track the index of the lowest value in the array. We initialize this variable with the number of the iteration/pass through we're on to start
  - This allows us to not step through every element multiple times after we've already sorted it
2. On each pass through, with our lowest value initialized to the current index of the outer loop, compare each element of the array against it. If it is lower, store the index of that value in this variable.
2. Once we've determined the lowest value, swap that value with the value at the index we started the pass through with. Thats index 0 on first pass through, 1 on second pass through, etc.

## Insertion Sort
