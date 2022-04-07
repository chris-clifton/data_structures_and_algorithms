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
