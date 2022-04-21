# frozen_string_literal: true

# Second stab at binary search
# - Used pointers instead of modifying the array
# - I think the only unnecessary stuff I'm doing is tracking
#   steps, result, and found for the sake of testing.
class BinarySearch
  attr_accessor :steps, :result, :found

  def initialize(options)
    @search_target = options[:search_target]
    @array         = options[:ordered_array]
    @steps         = 0
    @lower_bound   = 0
    @upper_bound   = @array.length - 1
  end

  def perform
    while @lower_bound <= @upper_bound do
      # Not necessary for a binary search, but I want to track this anyway
      # and also test against it
      @steps += 1

      # Get the midpoint
      midpoint = (@lower_bound + @upper_bound) / 2
      value_at_midpoint = @array[midpoint]

      if @search_target > value_at_midpoint
        @lower_bound = midpoint + 1
      elsif @search_target < value_at_midpoint
        @upper_bound = midpoint - 1
      elsif @search_target == value_at_midpoint
        @found = true
        @result = value_at_midpoint
        return
      end
    end
  end
end
