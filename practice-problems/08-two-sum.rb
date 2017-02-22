# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  nums.each_with_index do |number, pos_1|
    pos_1.upto((nums.length - 1)) do |pos_2|
      if number + nums[pos_2] == 0
        return [pos_1,pos_2]
      end
    end
  end
  return nil
end


# # their version
# def two_sum(nums)
#   idx1 = 0
#   while idx1 < nums.length
#     idx2 = idx1 + 1
#     while idx2 < nums.length
#       if nums[idx1] + nums[idx2] == 0
#         return [idx1, idx2]
#       end
#
#       idx2 += 1
#     end
#
#     idx1 += 1
#   end
#
#   return nil
# end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
