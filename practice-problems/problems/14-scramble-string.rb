# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.

#couldn't init result "" or will be out of index; with [] will pad with nil
def scramble_string(string, positions)
  result = []
  positions.each_with_index{ |pos, index| result[index] = string[pos] }
  return result.join
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
  (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
)
puts(
  'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm"): ' +
  (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm").to_s
)


# first version -- one line block for this better??
# def scramble_string(string, positions)
#   result = []
#   positions.each_with_index do |pos, index|
#     result[index] = string[pos]
#   end
#   return result.join #would compact if were likely could get mismatched pos and inx
# end
