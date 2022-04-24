# Recursive Algorithms for Speed
Recusion is the key to algorithms that makes our code run much faster.

For sorting, many algorithms implement Quick Sort under the hood- which uses recursion.

## Partitioning
To partition an array is to take a random value from the array- which is then called the pivot- and make sure that every number that is less than the pivot ends up to the right of the pivot.

## Algorithm
[0, 5, 2, 1, 6, 3]

1. Always start with the last element in the array (you don't have to, though)- this is the pivot
2. Assign pointers to the first element (left pointer), and the second to last element (right pointer)
3. The left pointer continuously moves one cell to the left until it reaches a value that is greater than or equal to the pivot, and then stops.
4. Then, the right pointer continuously moves one cell to the right until it reaches a value that is less than or equal to the pivot and then stops.
5. Swap the values at the right and left pointers
6. Continue this process until the pointers are pointing to the very same value or the left pointer has moved to the right of the right pointer
7. Finally, swap the pivot with the value the left pointer is currently pointing to.
