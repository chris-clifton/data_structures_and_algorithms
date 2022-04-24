class Queue
  def initialize
    @queue = [] # O(1)
  end

  def insert(element)
    @queue.push(element) # O(1)
  end

  def read
    @queue[0] # O(1)
  end

  # ruby .shift may actually be O(1) somehow:
  # ref https://stackoverflow.com/questions/8353026/what-is-the-run-time-of-shift-unshift-in-a-ruby-array
  def shift
    @queue.shift # O(N)
  end
end

my_var = [1, 2, 3, 4]