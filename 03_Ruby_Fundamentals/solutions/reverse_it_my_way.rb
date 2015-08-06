require 'pry'

def my_reverse(string)              #we pass in a word called 'string' into the method
  char = string.downcase.chars      #transforms into an array of characters. downcase the string
  word = " "                        #we need another variable to store the reversed word, called 'word'. 'Word' should be an empty string to
    until char.length == 0          #removes last element in the array and returns a letter
      word << char.pop              #shovels every last character into 'word' until there is nothing left
    end
    word                            #this prints out the word
end

def is_palindrome?(word)            #when ruby returns a boolean, need to add a question mark at the end of the method name
  if word.downcase.strip == my_reverse(word).downcase    #if the user's word is the same as the result of the my_reverse then
    "Your word is a palindrome"                          #print this if true
  else                                                   #otherwise
    "Your word is not a palindrome"                      #print this if not true
  end
end

puts "Give me a word \n"                                #prompt the user for a Word
word = gets.strip                                       #get the word from the user
puts is_palindrome?(word)                               #print out the results
