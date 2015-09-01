require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name,sqft, bedrooms, bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil
    @rent = nil
  end

  def not_occupied?
    renter.nil? #also renter == nil
  end

  def to_s
    "Apartment #{name} has #{sqft} square feet"
  end
end
