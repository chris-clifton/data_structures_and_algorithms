# frozen_string_literal: true

# First attempt
class SelectionSort
  attr_accessor :array

  def initialize(options)
    @array = options[:array]
  end

  def perform
    array_length = @array.length - 1

    return @array if array_length <= 1

    array_length.times do |outer_index|
      index_of_lowest_number = outer_index

      for inner_index in (outer_index + 1)..array_length do
        index_of_lowest_number = inner_index if @array[inner_index] < @array[index_of_lowest_number]
      end

      @array[outer_index], @array[index_of_lowest_number] = @array[index_of_lowest_number], @array[outer_index]
    end
  end
end
