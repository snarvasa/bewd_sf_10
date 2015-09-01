#Sean Narvasa // Lesson 7 Homework // Building Maker
#1. create a building
#2. prompt the user where they want to live
#3. check to see if the apartment is vacant
#4. add the renter to the apartment if it's available
#5. print out the list of renters

require_relative 'building.rb'                                 #loads the building.rb file
require_relative 'apartment.rb'                                #loads the apartment.rb file
require_relative 'renter.rb'                                   #loads the renter.rb file
require 'pry'                                                     #loads the pry library

def create_building                                               #defines a new create_building class
  puts "* * * * * * * * NEW BUILDING FORM * * * * * * * *"        #prints out the form header
  puts "What is the address of the building? \n"                  #asks the user the address of the building
  address = gets.strip                                            #gets the address and stores it in the address local variable

  puts "What is the name of building \n?"                         #asks the user the name of the building
  building_name = gets.strip                                      #gets the building name and stores it in building_name
  building = Building.new(address, building_name)                 #Create a new class instance of Building

  puts "How many units is in the building? \n"                    #asks the user how many units are in the building
  num_apts = gets.strip.to_i                                      #gets the number, converts it to integer, and stores it in num_apts
  building.apartments = Apartment.apartment_creator(num_apts)

  building.apartments.each do |apartment|
    num = Random.rand(0...10)
    if num <= 8
      apartment.renter = Renter.random_renter_generator
    end
  end

  puts building                                                   #print out the
  building.apartments.each do |apartment|
    puts apartment
    apartment.print_renter_info
   end
end

#######RUN THIS

create_building                                                   #calls the create_building method
