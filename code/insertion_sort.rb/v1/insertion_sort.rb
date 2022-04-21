# https://www.honeybadger.io/blog/ruby-insertion-sort/

def insertion_sort(array)
  array_length = array.length

  for index in 1...array_length
    working_index = index

    while working_index > 0
      if array[working_index - 1] > array[working_index]
        array[working_index], array[working_index - 1] = array[working_index - 1], array[working_index]
      else
        break
      end

      working_index -= 1
    end
  end

  p array
end

array = [3, 1, 2, 5, 4, 6, 8, 9, 7]

insertion_sort(array)
