#Sean Narvasa // Lesson 7 Homework // Building Maker

require 'pry'                                                         #loads the building.rb file
require_relative('renter')                                            #loads the renter.rb file

class Apartment                                                       #defines new Apartment class
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent   #defines setters and getters for name, sq. ft, etc.

  def initialize(name, sqft, bedrooms, bathrooms)                     #our constructor - creates new class instance of Apartment
    @name = name                                                      #name instance variable
    @sqft = sqft                                                      #sqft instance variable
    @bedrooms = bedrooms                                              #bedrooms instance variable
    @bathrooms = bathrooms                                            #bathrooms instance variable
    @renter = nil                                                     #renter is nil == not required to create an Apartment instance
    @rent = nil                                                       #rent is nil == not required to create an Apartment instance
  end                                                                 #ends the constructor

  def to_s                                                            #defines the to_s instance method. Contents below override the print of the default objectID
    "Unit #{name} is #{sqft} square feet."                            #prints out information about the apartment unit
  end

  def not_occupied?                                                   #method to check if the apartment is not occupied
    renter.nil?                                                       #checks if the renter variable is nil, return a boolean
  end

  def print_renter_info                                              #method to print out the status of the apartment
    if not_occupied?                                                 #if the apartment is not occupied then
      puts "This unit is vacant. \n \n"                              #print out the unit is vacant
    else                                                             #otherwise
      puts "#{renter} \n \n"                                         #print out the renter contents
    end
  end

  def self.apartment_creator(num)
    apt_array = []
    num.times do |num|
      unit_number = num + 1
      sqft = Random.rand(800...2000)
      bedrooms = Random.rand(1...3)
      bathrooms = Random.rand(1...3)
      apt = Apartment.new(unit_number, sqft, bedrooms, bathrooms)
      apt_array.push(apt)
    end
    apt_array
  end
end
