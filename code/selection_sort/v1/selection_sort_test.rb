require '../../test_helper'
require_relative 'selection_sort'

class SelectionSortTest < MiniTest::Test
  def test_perform_correctly_sorts_array
    10.times do |i|
      array = Array.new(i) { rand(1...1000) }

      selection_sort = SelectionSort.new(array: array)
      selection_sort.perform

      assert_equal selection_sort.array, array.sort
    end
  end
end
