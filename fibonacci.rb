# Recursion is a tool a programmer can use to invoke a function call on itself.
# Fibonacci sequence is the textbook example of how recursion is used.
#
# Most recursive code if not all can be expressed as iterative function, but its
# usually messy. Good examples of other recursive programs are Data Structures
# such as trees, binary search tree and even quicksort.
#
# Recursion is used to make code less sloppy, keep in mind it is usually slower
# and requires more memory.

require 'pry'
# using a loop
puts 'loop'
def fibonacci_loop(count)
  # this function prints the first n numbers in the Fibonacci sequence
  array = [1]
  number = 1
  while array.count < count
    array << number
    number = array[-1] + array[-2]
  end

  puts array
end

fibonacci_loop(6) # should print 1 1 2 3 5 8

puts 'recursive'
# using recursion
def fibonacci_recursive(count, array)
  if array.count < count
    if array.count < 2
      array << 1
    else
      number = array[-1] + array[-2]
      array << number
    end
    fibonacci_recursive(count, array)
  else
    puts array
    return array
  end
end

fibonacci_recursive(6,[1]) # should print 1 1 2 3 5 8
