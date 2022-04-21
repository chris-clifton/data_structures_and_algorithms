# frozen_string_literal = true

# Code golf version.
#
# Basically, each pass through is going to sort the largest element to the end
# of the array on each iteration. This means, to be more efficient, we don't need
# to check after array.length - i elements where i is the current number of pass
# throughs.
# So the algorithm here is to:
# - initially set @sorted to false and our @unsorted_until_index variable to the
#   length of @array (minus 1 for zero index)
# - guard clause to return if the array is only 1 element and therefor already sorted
# - an outer loop on the condition of @sorted being false. For each iteration of this loop,
#   perform one sorting pass through on @array and decrement our @sorted_until_index by 1.
#   - in the inner loop, iterate over a range from 0 to our current @unsorted_until_index
#     and compare every set of adjacent values. If the first element is greater than the
#     second, we set @sorted to false and swap the two elements.
# - eventually, we will have passed through @array enough times that the adjacent values
#   will be in order, which means we won't set @sorted to false (breaking
#   us out of the outer loop) and we will know @array is now sorted
class BubbleSort
  attr_accessor :array

  def initialize(options)
    @sorted               = false
    @array                = options[:array]
    @unsorted_until_index = @array.size - 1
  end

  def perform
    return @array if @array.size <= 1

    while !@sorted do
      @sorted = true

      for i in 0...@unsorted_until_index
        if @array[i] > @array[i + 1]
          @sorted = false
          @array[i], @array[i + 1] = @array[i + 1], @array[i]
        end
      end

      @unsorted_until_index -= 1
    end
  end
end
