# Ordered Array
Ordered arrays are basically just arrays that keep all its elements in order and anytime a value is added, it is added in the correct index so that the ordered array is always ordered.

This is achieved by traversing the array and looking for the first value that is greater than the value you want to add. Once you find that first number, you know the value you want to add belongs in it's spot and that larger value (and everything after it) need to be shifted down.

While insertion into an ordered array is obviously less efficient than a regular array, ordered arrays have a secret superpower when it comes to searching

In general, ordered arrays can contain duplicate elements.

# Sets
A set is a data structure that does not allow duplicate values.

There are different types of sets but, in an array-based set (which we're using here), is basically just an array that won't allow duplicate values into itself.

Sets are useful when you cant have duplicate data in your program but they arent very efficient.

Inserting into the end of a set, the best-case scenario, is an N + 1. You have to read the value of each element of the set, to make sure the value you want to insert doesnt already exist, and then you have to perform the insert.  So in the case of a 500 element set, you have to read 500 values, then insert 1, making it take 501 steps or N + 1.

In the worst case scenario, which is inserting into the beginning of a set, you have to perform the 500 reads, then shift 500 values, then perform the insert- this is a 2N + 1.

So, sets can be useful (phone books, for example), but this is how you analyze your needs vs. data structures.
