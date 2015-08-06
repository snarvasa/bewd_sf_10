require "pry"

shoes = ["nike", "varvatos", "sperry", "converse"]
cars = ["volvo", "tesla", "ford", "mini", "toyota"]

def shoe_finder
  shoes = ["nike", "varvatos", "sperry", "converse"]
  shoes.each do |shoe|                               #for each item in the shoe array
    puts "#{shoe}" if shoe.start_with?("D")          #print out the shoe
  end
end

def car_five
  cars = ["volvo", "tesla", "ford", "mini", "toyota"]
  cars.each do |car|
    puts "#{car}" if car.length > 5
  end
end

car_five                                          #run it
