require '../../test_helper'
require_relative 'bubble_sort'

class BubbleSortTest < MiniTest::Test
  def test_perform_correctly_sorts_array
    10.times do |i|
      next if i == 0

      array = Array.new(i) { rand(1...1000) }

      bubble_sorted_array = BubbleSort.new(array: array).perform

      assert_equal bubble_sorted_array, array.sort
    end
  end
end
