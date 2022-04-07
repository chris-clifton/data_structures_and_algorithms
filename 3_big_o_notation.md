# Big O Notation
The way we talk about time complexity is in the number of steps. But a number of steps isn't a good enough number because it doesnt have any way to tell you how efficient it is.

For example, a linear search of a 20 element array takes 20 steps, but so does a binary search on an ordered array of a million elements.  Same number of steps, but the binary search is clearly more efficient.

Big O basically justs answers the question of how does the number of steps change as the data grows?

When describing an algorithm in terms of Big O, we always describe it by its "worst case" scenario. For example, a linear search is not always O(N)- if it found the element early or even in the first search, that would make it O(1). But because a lineary search COULD be O(N) in its worst case scenario (value is the last element in an array), we use O(N) to describe it. Always be pessimistic and consider how inefficient an algorithm can potentially be, not how fast it could be.

## O(1)
AKA: Order of 1, Big O of 1

Algorithm always takes the same number of steps, regardless of how much data there is.

Reading an element from an array is an O(1) operation- it always takes one step.  That step may have taken 5 minutes 20 years ago and now takes a nano second, but its still just one step.

This is considered "constant time" because, no matter how the data changes, its always the same number of steps.

Other O(1) operations:
- insertion/deletion at the end of an array

## O(N)
AKA: O of N

Algorithm that says the number of steps is equivalent to the number of elements.

This is considered "linear time" because the steps always increases by 1 for each new element.

O(N) is considered to be less efficient than O(1).

## O(log N)
AKA: O of log N
In the case of a binary search, it isn't O(N) because it will always take less steps than the number of elements and it isn't O(N) either because the algorithm will increase in steps as the data grows.

O of log N describes an algorithm that increases by 1 step every time the data is doubled (like a binary search).

Really is shorthand for O(log2 N).

O (log N) means that the algorithm takes as many steps as it takes to keep halving the data elements until we remain with one.

O (log N) takes one additional step each time the data is doubled.

## Efficiency
Of these three types of algorithms, they can be sored from most efficient to least efficient as follows:
O(1)
O(log N)
O(N)

# Logarithm
Logarithms have nothing to do with algorithms and are the inverse of exponents.

## Exponents vs logarithms
Exponents
- 2^3 in exponents is 8 because its 2 * 2 * 2

Logarithm
- log2 8 means how many times do you have to multiple 2 by itself to get 8
- that means log2  8 is equivalent to 3 because you have to multiple 2 by itself 3 times to get 8

## In other words
Another good way to think of log2 8 is, how many times must 8 be divided by 2 in order to get 1? The answer is 3
