require 'pry'

class Person
attr_accessor :name, :age, :home_town

#instance_factory this makes Person.new available
  def initialize(name, age, home_town)
    @name = name
    @age = age
    @home = home
  end
end
