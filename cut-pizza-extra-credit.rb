# From https://softwareengineering.stackexchange.com/questions/25052/in-plain-english-what-is-recursion

# Extra Credit The cut_pizza example above will give you a stack level too deep
# error if you ask it for a number of slices that isn't a power of 2 (i.e 2 or
# 4 or 8 or 16). Can you modify it so that if someone asks for 10 slices it wont run for ever?


require 'pry'

def cut_pizza(existing_slices, desired_slices)
  if existing_slices < desired_slices # changed != to <
    new_slices = existing_slices * 2
    # binding.pry
    cut_pizza(new_slices, desired_slices)
  else
    puts existing_slices # to confirm that 
    return existing_slices
  end
end

pizza = 1 # a whole pizza, 'one slice'
cut_pizza(pizza, 10) # => we'll get 16?
