# Recursion
The official name for when a function calls itself.

Easy to create an infinite loop (which is useless and dangerous) but can be a powerful tool if harnessed correctly.

Need to always **identify a base case** and return when that condition has been met.

Great solutions when the algorithm itself doesnt know on the outset how many levels deep something it needs to dig might be.

## Recurse instead of loop
Example: NASA 10 second countdown timer

```ruby
def countdown(number)
  puts number

  return if number == 0 # set base case

  countdown(number - 1)
end

countdown(10)
```

## Reading Recursive code
Example: finding factorials
```ruby
def factorial(number)
  return 1 if number == 1 # set base case

  number * factorial(number - 1)
end
```

## Recursion in the eyes of the computer
Looking at our factorial method, the computer calls factorial(3) and, before that method is complete, it calls factorial(2), and before that completes it has to call factorial(1).
- factorial(1) runs inside of factorial(2)
- factorial(2) runs inside of factorial(3)

The computer uses a stack to keep track of which function its in the middle of calling. This stack is known as the call stack. If we don't have a base case, we'll keep pushing the last call onto the stack and result in a stack overflow (computer is out of memory).

Method calls are pushed onto the stack and then popped off after the base case has been reached.

## Recursion in Action
Our previous examples could have just been solved with a loop. But recursion is a natural fit in any situation where you find yourself having to repeat an algorithm within the same algorithm. In these cases, recursion can make for more readable code.

Ex: Traversing a filesystem.
Lets say you have a script that does something for each file in a directory. However, you don't want this script to run on just the files in one directory, you want it to act on all the files within the subdirectories as well (and their subdirectories).

```ruby
def find_directories(directory)
  Dir.for_each(directory) do |filename|
    if File.directory? ("#{directory}/#{filename}") && ![".", ".."].include?(filename)
      puts filename
    end
  end
end
```