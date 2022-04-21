# frozen_string_literal: true

# Class to check that the ruby code passed in has all its opening/closing braces
# formatted correctly.
# Practicing using a stack here.
class Linter
  attr_reader :error

  def initialize
    @stack = []
  end

  def lint(text)
    # Loop over each character in our code
    text.each_char_with_index do |char, index|

      # If the character is an opening brace, push it onto the stack
      if opening_brace?(char)
        @stack.push(char)
      elsif closing_brace?(char) # Else if it is a closing brace...

        # ...and the character closes the most recent opening brace from our stack,
        # we can pop that value off the stack.
        if closes_most_recent_opening_brace?(char)
          @stack.pop
        else #...and the character doesn't close our most recent opening brace, we have an error
          @error = "Incorrect closing brace: #{char} at index #{index}"
          return
        end
      end

      if @stack.any?
        @error = "#{@stack.last} does not have a closing brace"
      end
    end
  end

  private

  # Is the character one of our opening brace characters?
  def opening_brace?(char)
    ['(', '{', '['].include?(char)
  end

  # Is the character one of our closing brace characters?
  def closing_brace?(char)
    [')', '}', ']'].include?(char)
  end

  # Get the opening brace value for a given brace character
  def opening_brace_of(char)
    { ")" => "(", "}", => "{", "]", => "[" }[char]
  end

  # Get the last value of the stack
  def most_recent_opening_brace
    @stack.last
  end

  # Check if the currently closing brace character is the right closing brace
  # by comparing it to the last value of the stack
  def closes_most_recent_opening_brace?(char)
    opening_brace_of(char) == most_recent_opening_brace
  end
end
