#1. Create a class
#2. Set attributions
#3. Build a constructor
#4.  Create an instance of a class

require 'pry'


#create a class
class Robot

  #creates getting and setter methods for each attribute
  #writes to methods for each symbol that you specify
  #these are the attributes of the person, but the object hasn't been created yet

  attr_accessor :name, :type, :origin

  #this method creates new instances of the robot class
  #@instance_variables are available throughout the class
  #@name is an instance_variable

  def initialize(name, type, origin)              #this is the constructor. This makes  name, type, and origin required
    @name = name
    @type = type
    @origin = origin
  end

#these are instance methods
#self refers to the instance of arob that calls this method

  def self.make_robots(number)                  #this is a class method to make robots
    robots = number.to_i
    robots.times do
      robot = Robot.new("Harold", "model s", "San Francisco")
      puts "#{robot.name} has been created."
    end
  end

  def flying_skills                             #this is a behavior within the Robot class
    binding.pry
    "I am a #{self.name}. I can fly!"
  end

  def laser_fighting_skills
  end

end

#RUN THIS#
#r2d2 = Robot.new("BlahBlah", "Model S", "Bathroom")        #creates a new robot called r2d2
#puts r2d2.flying_skills                                    #calls the flying skills behavior and will have r2d2 say it's name

Robot.make_robots(10)                                       #calls the make_robots method. The number 10 is passed into this method
