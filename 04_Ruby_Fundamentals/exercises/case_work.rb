require 'pry'

def the_case(grade)
  case grade                      #tell the case statement what the grade is
    when "A"                        #aka. grade === "A"
      "You aced the class!"
    when "B"
      "You suck."
    when "C", "D"           #you can combine these conditionals
      "Eh. The hell?"
    when "F"
      "GTFO."
    else
      "I have no idea what you're typing."
    end
end

puts the_case("A")
