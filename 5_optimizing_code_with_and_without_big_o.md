# Optimizing Code With and Without Big O
p.51

This chapter takes a look at how to compare algorithms that seem like they may have the same efficiency under Big O but there are other ways to determine which one is more efficient.

## Selection Sort
1. Iterate over an array once for every element
2. In this outer loop, create a variable to track the index of the lowest value in the array. We initialize this variable with the number of the iteration/pass through we're on to start
  - This allows us to not step through every element multiple times after we've already sorted it
2. On each pass through, with our lowest value initialized to the current index of the outer loop, compare each element of the array against it. If it is lower, store the index of that value in this variable.
2. Once we've determined the lowest value, swap that value with the value at the index we started the pass through with. Thats index 0 on first pass through, 1 on second pass through, etc.

### Efficiency of Selection Sort
Selection Sort contains two types of steps: comparisona and swaps. We compare each element with the lowest number we've encountered in each passthrough, and swap the lowest number into its correct position. For swaps, we only make one for each passthrough.

Despite being roughly 1000 times faster, in Big O, Selection Sort and Bubble Sort are described the same way- O(N^2). This is because you might want to describe Selection Sort as O(N^2 / 2) but Big O ignores constants. In other words, Big O never includes regular numbers that arent an exponent.

## The Role of Big O
If two algorithms with different efficiencies are described the same way under Big O, then why use it?

Big O is a great way to determine the long-term growth rate of algorithms. That is, for some amount of data, O(N) will always be faster than O(N2). And this is true no matter whether the O(N) is really O(2N) or even O(100N) under the hood. It is a fact that there is some amount of data at which even O(100N) will become faster than O(N^2).

This is why we ignore constants- because at SOME point, that wont matter.

So Big O is extremely useful because if two algorithms fall under different classifications of Big O, you'll generally know which algorithm to use since, with large amounts of data, one algorithm is guaranteed to be faster than the other at a certain point.

The main takeaway though is that, when two algorithms fall under the same Big O classification, it doesnt necessarily mean that both algorithms process at the same speed. Bubble Sort being twice as slow as Selection Sort, for example.

### A Practical Example
Lets say we're tasked with writing a Ruby application that takes an array and creates a new array out of every other element from the original array. You might be tempted to do something like using `each_with_index` like so:

```ruby
def every_other_element(array)
  new_array = []

  array.each_with_index do |element, index|
    new_array << element if index.even?
  end

  new_array
end
```

When analyzing the steps taking place here, we can see that there are really two types of steps. We have one type of step in which we look up each element of the array, and another type of step in which we add elements to the new array.

We perform N array lookups, since we loop through each and every element of the array. We only perform N / 2 insertions though since we only insert every other element into the new array.

Since we have N lookups and N / 2 insertions, we could say this algorithm has an efficiency of O(N + (N / 2)), which can be rephrased as O(1.5N), but since Big O doesn't care about constants, this algorithm is simply O(N).

To optimize this original solution, we can do the following:
- Instead of iterating through each element in the array and checking whether the index is an even number, we can instead simply look up every other element in the array in the first place.

```ruby
def every_other_element(array)
  new_array = []
  index = 0

  while index < array.length
    new_array << array[index]
    index += 2
  end

  new_array
end
```

This second implementation we use a while loop to skip over each element, rather than check each one. It turns out that for N elements there are N / 2 lookups and n / 2 insertions into the new array. And like the first implementation, this results in an O(N) algorithm.

However, our first implementation truly takes 1.5N steps, while our second implementation takes only N steps, making the second implementation significantly faster.

While the first implementation is a more idiomatic way to write Ruby code, if we're dealing with large amounts of data, its worth considering using the second implementation to get a significant performance boost.
