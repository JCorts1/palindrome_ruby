#In this funciton we start with the if.
#if the word length is = or less than 1 it is obiusly a palindrome

def is_palindrome(word)
  if word.length <= 1
    return true
#Then if the first index is not the same as the last index of the word it will return false.
  elsif word[0] != word[-1]
    return false
#Here we repeat the sequence calling the method again but this time
#we are using the second index and comparing it with the -2
  else
    is_palindrome(word[1, word.length-2])
  end
end

puts "Palindrome Effect".center(35, "-")
print "Word: "
word = gets.chomp
puts "Is Palindrome #{is_palindrome(word)}"
