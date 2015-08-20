#We work for NEST. Our job is to create a script that reads the data from NEST. An array of temperatures.
#We read it and create an instance of temperatures
#NEST assigns a target temperature
#If the temperature is above the target temperature, create a method to reduce the temperature and / or turn off the thermostat

require 'pry'

class Thermostat
  attr_accessor :degrees
  attr_reader :target

  def initialize(target, temp)
    @target = target
    @temp = temp
  end

#self.target, @target, and target are all the same inside of this instance method
#because @instance_variables live within this class

  def calibrate_temp(degrees, target)
    if degrees > target
      puts "It's #{degrees}. That's too hot! Turn on the air conditioner."
    elsif degrees < target
      puts "It's #{degrees}. That's too cold! Turn on the heater."
    else
      puts "Ahh! Wonderful."
    end
  end


  def self.detect_temperature(all_temps, target_temp)
    all_temps.each do |temp|
    reading = Thermostat.new(temp, target_temp)
    reading.calibrate_temp(temp, target_temp)
    end
  end

private

  def turn_on_header

  end

  def
  end



end



########
all_temps = [45, 65, 85, 95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22]
target_temp = 75


Thermostat.detect_temperature(all_temps, target_temp)
end
