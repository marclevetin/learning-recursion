From https://softwareengineering.stackexchange.com/questions/25052/in-plain-english-what-is-recursion

require 'pry'

# # using recursion
# def cut_pizza(existing_slices, desired_slices)
#   if existing_slices != desired_slices
#     # we don't have enough slices yet to feed everyone, so
#     # we're cutting the pizza slices, thus doubling their number
#     new_slices = existing_slices * 2
#     binding.pry
#     # and this here is the recursive call
#     cut_pizza(new_slices, desired_slices)
#   else
#     # we have the desired number of slices, so we return
#     # here instead of continuing to recurse
#     return existing_slices
#   end
# end
#


# using a loop

def cut_pizza(existing_slices, desired_slices)
  while existing_slices != desired_slices
    existing_slices = existing_slices * 2
    binding.pry
  end
  return existing_slices
end

pizza = 1 # a whole pizza, 'one slice'
cut_pizza(pizza, 8) # => we'll get 8
