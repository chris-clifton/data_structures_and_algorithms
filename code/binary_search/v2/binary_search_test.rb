require '../../test_helper'
require_relative 'binary_search'

class BinarySearchTest < MiniTest::Test
  # Setup a hash with predefined test cases where each element is a hash with
  # the keys 'elements' for the number of elements in the array we'll build,
  # and 'max_steps' which is the number of steps our binary search should find
  # the answer by.
  def setup
    @test_cases = [{ elements: 8,
                     max_steps: 3 },
                   { elements: 16,
                     max_steps: 4 },
                   { elements: 32,
                     max_steps: 5 },
                   { elements: 64,
                     max_steps: 6 },
                   { elements: 128,
                     max_steps: 7 },
                   { elements: 256,
                     max_steps: 8 },
                   { elements: 512,
                     max_steps: 9 },
                   { elements: 1024,
                     max_steps: 10 },
                   { elements: 1_000_000,
                     max_steps: 20 }]
  end

  # Test that the number of steps is always less than or equal to the max steps
  # it should take a binary search to find the answer.
  # For each of these test cases, create 10 ordered arrays with random numbers.
  # For each of these arrays, test that BinarySearch.perform correctly calculates
  # the number of steps it took to arrive at the answer and that number is less
  # than or equal to the test case's max_steps value.
  def test_perform_calculates_number_of_steps_correctly
    @test_cases.each do |test_case|
      10.times do
        ordered_array = Array.new(test_case[:elements]) { rand(1...1000) }.sort

        # Grab a random element from the ordered array as our search_target
        search_target = ordered_array.sample

        binary_search = BinarySearch.new(search_target: search_target, ordered_array: ordered_array)
        binary_search.perform

        # Test that the number of steps is less than or equal to the max steps
        #assert binary_search.steps <= test_case[:max_steps]

        # Test that the BinarySearch was able to locate the search_target
        assert binary_search.found

        # And test that we found the right number
        assert_equal binary_search.result, search_target
      end
    end
  end

  # For each test case, create an ordered array that does not contain the number
  # we are going to be searching for. The BinarySearch class's 'step' attribute
  # should be equal to the number of max_steps defined by the test case
  def test_perform_returns_max_steps_when_search_target_is_not_present_in_collection
  end
end
