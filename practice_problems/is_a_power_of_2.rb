# #Write a method that takes in a number and returns true if it is
# a power of 2. Otherwise, return false.

def is_a_power_of_two?(num)
  if (Math.log2(num) % 1).zero?
    return true
  end
  return false
end

puts(is_a_power_of_two?(1)) # true
puts(is_a_power_of_two?(16)) # true
puts(is_a_power_of_two?(78)) # false
puts(is_a_power_of_two?(0)) # false
puts(is_a_power_of_two?(32)) # true
