require 'pry'

class Person
  attr_accessor :name, :age, :hometown
  #instance factory: this makes Person.new available
  def initialize(name, age, hometown)      #attributes are determined here
    @name = name
    @age = age
    @hometown = hometown
  end
end

###########
binding.pry
brad = Person.new("Brad", 50, "New Orleans")
