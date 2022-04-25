class SortableArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def quickselect!(search_target, left_pointer, right_pointer)
    # Base case: the subarray has one cell
    if right_pointer - left_pointer <= 0
      return @array[left_pointer]
    end

    pivot_position = partition!(left_pointer, right_pointer)
    
    if search_target > pivot_position
      quickselect!(search_target, pivot_position + 1, right_pointer)
    elsif search_target < pivot_position
      quickselect!(search_target, left_pointer, pivot_position - 1)
    else # pivot position == search_target
      return @array[pivot_position]
    end
  end

  def partition!(left_pointer, right_pointer)
    pivot_position = right_pointer
    pivot = @array[pivot_position]

    right_pointer -= 1

    while true do
      while @array[left_pointer] < pivot do
        left_pointer += 1
      end

      while @array[right_pointer] > pivot do
        right_pointer -= 1
      end

      if left_pointer >= right_pointer
        break
      else
        swap(left_pointer, right_pointer)
      end
    end

    swap(left_pointer, pivot_position)

    return left_pointer
  end

  private

  def swap(pointer_1, pointer_2)
    @array[pointer_1], @array[pointer_2] = @array[pointer_2], @array[pointer_1]
  end
end

array = [0, 50, 20, 10, 60, 30]
sortable_array = SortableArray.new(array)
p sortable_array.quickselect!(1, 0, array.length - 1)
p sortable_array.array
