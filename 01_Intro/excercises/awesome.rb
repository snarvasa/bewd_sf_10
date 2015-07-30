require 'pry'

def awesome_number(number)
    if number % 3 == 0 && number % 5 == 0
        puts "Awesome #{number}"
    elsif number % 3 == 0
        puts "Awe"
    elsif number % 5 == 0
        puts "Some"
    else
        puts "#{number} is just not an awesome number"
    end
end

def awesome_seeker(top_num)
    1.upto(top_num) do |number|                    #Call this method from 1 upto the top number,
        awesome_number(number)                     #when it's done, print out "This is the number X"
    end
end

awesome_seeker(100)                               #calls the method "awesome_seeker"
