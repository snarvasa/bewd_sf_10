
require 'pry'

class Robot
  attr_accessor :name, :type, :origin
  def initialize(name,type, origin)
    @name = name
    @type = type
    @origin = origin
  end

  def self.make_robots(number)
    robots = number.to_i                            #Converts the number to integer
    robots.times do                                 #times looop
      Robot.random_robot_maker                      #call the random_robot_maker loop
    end
  end


  def self.random_robot_maker
    names = ["Harold", "Kumar", "Ronnie", "Geraldine", "Janice"]
    types = ["Android", 'Super-Android']
    origins = ["Chicago", "Brooklyn", "Oakland", "Venus", "San Francisco"]

    name = names.sample
    origin = origins.sample
    type = types.sample

    robot = Robot.new(name, type, origin)
    puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}."
    puts "#{robot.flying_skills} #{robot.empathy}"
  end


  def flying_skills                                 #this is an instance method
    if type == "Super-Android"                      #conditional that restricts the output
      puts "I am #{self.name}. I can fly!"
    else
      puts "I can't fly. So sad."
    end
  end

  def empathy
    if origin == "San Francisco"
      puts "I am also from San Francisco."
    else
      puts "I am from a strange land."
  end
end
end


#RUNIT
Robot.make_robots(10)
