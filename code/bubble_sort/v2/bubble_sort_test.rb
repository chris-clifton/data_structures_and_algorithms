require '../../test_helper'
require_relative 'bubble_sort'

class BubbleSortTest < MiniTest::Test
  def test_perform_correctly_sorts_array
    10.times do |i|
      array = Array.new(i) { rand(1...1000) }

      bubble_sort = BubbleSort.new(array: array)
      bubble_sort.perform

      assert_equal bubble_sort.array, array.sort
    end
  end
end
