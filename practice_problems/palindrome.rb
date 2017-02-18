def palindrome?(string)
    array = string.chars
    index = 0
    while index < array.length/2
        unless array[index] == array[-(index+1)]
          return false
        end
        index +=1
    end
    return true
end
puts palindrome?("abc")
puts palindrome?("eye")
puts palindrome?("boob")
puts palindrome?("sam")
puts palindrome?("fred")
