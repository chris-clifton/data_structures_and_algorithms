# 2. Why Algorithms Matter

Algorithms arent actually that complex- they are just a particular process for solving a problem.

It is possible to go about a particular operation more than one way, which means there are multiple algorithms that can achieve any particular operation.

## Ordered Arrays
Ordered arrays are basically just arrays that keep all its elements in order and anytime a value is added, it is added in the correct index so that the ordered array is always ordered.

This is achieved by traversing the array and looking for the first value that is greater than the value you want to add. Once you find that first number, you know the value you want to add belongs in it's spot and that larger value (and everything after it) need to be shifted down.

While insertion into an ordered array is obviously less efficient than a regular array, ordered arrays have a secret superpower when it comes to searching

### Searching an Ordered Array
Regular arrays have linear searching. This means we have to look at each and every value because any element could contain the value we're searching for.

With an ordered array, we can stop the search early if we know the value isn't going to be in the array.  For example, for ordered array [10, 20, 30, 40, 50], we can stop a search for the value 25 once we reach the value 30 since its impossible it appears later in our ordered array.

But, its possible that we have to search each and every element even in an ordered array, which would mean that ordered arrays and regular arrays dont have much of a difference in efficiency.

BUT, this assumes that the only way to search is linearly, and this is where algorithms come in. **The main advantage of an ordered array is that it allows for binary searching.**

## Binary Search p.24
Basically a computer version of how you would guess a number between 1 and 100. You start with a central value and you eliminate half the remaining values and keep doing this until you arrive at your value.

For an ordered array with 100 elements, a linear search has a maximum number of steps of 100. A binary search has a maximum of 7.
For an ordered array with a million elements, a binary search will find the value in 20 steps.

With linear search, the maximum number of steps is always the number of the elements in the array.
**Every time we double an ordered list, the number of steps it takes to find a value increases by just 1.** p.25

But this doesn't mean you should always use ordered arrays just because searching is faster. For example, if all you are doing is adding to an array, use a regular array because insertion is quicker.
