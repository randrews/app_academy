# take in string; return true if the letter "z" appears **within** 3 letters
# AFTER a "a". May assume only lowercase, etc.....

def nearby_az(string)
  array = string.chars
  array.each_with_index do |letter, index|
    if letter == "z"
      offset = 3
      while offset > 0
        if array[index - offset] == "a"
          return true
        end
        offset -= 1
      end
    end
    return false
end

  puts nearby_az("blabalz") #true
  puts nearby_az("bsjflfuydlahjz") #true
