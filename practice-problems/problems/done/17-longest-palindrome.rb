# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substring* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

# def palindrome?(string)
#   i = 0
#   while i < string.length
#     if string[i] != string[(string.length - 1) - i]
#       return false
#     end
#
#     i += 1
#   end
#
#   return true
# end
#
# # uses the previous check for palindrome
# def longest_palindrome(string)
#   array = string.chars
#
#   array.length.downto(1) do |n|
#
#     array.each_cons(n) do |chunk|
#
#       if palindrome?(chunk)
#         return chunk.join
#       end
#     end
#   end
# end


# ** checks for palindrome AND returns guaranteed longest
# def longest_palindrome(string)
#   array = string.chars
#   array.length.downto(1) do |n|
#     result = array.each_cons(n).find { |chunk| chunk == chunk.reverse }
#     unless result == nil
#       return result.join
#     end
#   end
# end

# even sweeter -- you can put the test on same line with return, because it
# evaluates from the right anyhow!!
def longest_palindrome(string)
  array = string.chars
  array.length.downto(1) do |n|
    result = array.each_cons(n).find { |chunk| chunk == chunk.reverse } #find_all would get all
    return result.join if result
  end
end

# ** doesn't seem to guarantee unique result though if more than one pal of same length


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
