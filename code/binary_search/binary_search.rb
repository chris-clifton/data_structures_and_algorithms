# Notes:
# First iteration. This works*, but now that its done, its pretty apparent that
# it has room for improvement. This should be refactored to use index pointers
# instead of slicing and modifying the array passed in.
# This should also be refactored to return either the search_target (if we find it)
# or nil and then get rid of @found and @result.

# TODO: Having @steps += 1 at the end of the loop cant be right. That would mean
#       that if we land on the @search_target as the first current_index that
#       we'd have 0 steps? Need to fix that out before I say this "works".

# Given an array of numbers, perform a binary search and return the number of
# steps it takes to complete.
#
# ex: binary_search = BinarySearch.new(search_target: 4, ordered_array: [1, 2, 3, 4, 5, 6])
#     binary_search.perform => 4
#     binary_search.steps => 1
class BinarySearch
  attr_accessor :steps, :found, :result

  # Setup our instance variables
  #
  # param options [Hash] - Hash that should contain the keys 'search_target'
  #                        and 'working_array' which are assigned instance variables
  def initialize(options)
    @search_target  = options[:search_target]
    @working_array  = options[:ordered_array]
    @steps          = 0
  end

  def perform
    @found = false
    working_array = @working_array

    while !@found do
      begin
        current_index = (@working_array.size - 1) / 2

        # If the search_target can be found in the current_index of working_array,
        # then we can set @found to true (which means we're done) and can break
        # out of here early.
        if @working_array[current_index] == @search_target
          @found = true
          @result = @working_array[current_index]
          break
        end

        # If we've narrowed it down to 1 element, check if thats our
        # @search_target
        if @working_array.size == 1 && @working_array.first == @search_target
          @found = true
          @result = @working_array.first
          break
        end

        # Break if we are down to our last element, check to see if that element is
        # our @search_target, and break either way.
        if @working_array.size == 1
          @found = true if @working_array[0] == @search_target
          break
        end

        # TODO: Document
        @working_array = if @search_target > @working_array[current_index]
                           @working_array[(current_index + 1)..]
                         else
                           @working_array[..current_index - 1]
                         end

        # Increment steps by 1
        @steps += 1
      rescue StandardError => e
        binding.pry
      end
    end
  end
end
