require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "-----------New Bulding ----------"
  puts "What is the building name? \n"
  name = gets.strip

  puts "What is the building address? \n"
  address = gets.strip
  building = Building.new(name, address)
  add_units_to_building(building)
end

def add_units_to_building(building)
  puts "How many units? \n"
  units = gets.strip.to_i
  units.times do
    building.apartments << create_apartment
  end
  building.list_units
end

def create_renter
  puts "-----New Renter ----"
  puts "What is renter's name? \n"
  name = gets.strip

  puts "What is #{name}'s credit score? \n"
  credit_score = gets.strip

  puts "What is #{name}'s annual salary? \n"
  annual_salary = gets.strip
  Renter.new(name, credit_score, annual_salary)
end

def create_apartment
  puts "---------New Apartment -------"
  puts "What is the unit number or name?\n"
  name = gets.strip

  puts "How many square feet? \n"
  sqft = gets.strip

  puts "How many bathrooms? \n"
  bathrooms = gets.strip

  puts "How many bedrooms? \n"
  bedrooms = gets.strip
  Apartment.new(name, sqft, bathrooms, bedrooms)
end

create_building
