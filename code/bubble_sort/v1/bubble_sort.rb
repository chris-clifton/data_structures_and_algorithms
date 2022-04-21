class BubbleSort
  attr_accessor :pass_throughs

  def initialize(options)
    @array = options[:array]
  end

  def perform
    pass_throughs = 0
    array_is_unsorted = true

    while array_is_unsorted
      first_pointer = 0
      second_pointer = 1
      array_was_changed = false

      if @array.length == 1
        return @array
      end

      while first_pointer < second_pointer
        if @array[first_pointer] >= @array[second_pointer]
          array_was_changed = true

          first_value  = @array[first_pointer]
          second_value = @array[second_pointer]

          @array[first_pointer]  = second_value
          @array[second_pointer] = first_value
        end
        
        first_pointer += 1
        second_pointer == @array.length - 1 ? second_pointer : second_pointer += 1
      end

      if !array_was_changed
        array_is_unsorted = false
        return @array
      end

      pass_throughs += 1
    end
  end
end
