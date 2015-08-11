require 'pry'

def talent
    engineer = "Kisha"                          #this is the local variable
    "#{engineer} is awesome"
    san_francisco(engineer)                     #this passes engineer to the new method
    moscow(engineer)
end

def san_francisco(awesomeperson)                 #This is called in the talent method
  puts "I am headed to SF. This is #{awesomeperson}"
end

def moscow(engineer)
  puts "It's too cold. #{engineer} is unavailable."
end

puts san_francisco("Michael Jordan")             
