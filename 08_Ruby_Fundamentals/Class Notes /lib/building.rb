#Sean Narvasa // Lesson 7 Homework // Building Maker

require 'pry'                                                                   #require the pry library

class Building                                                                  #defines a new class called Building

  def initialize(address, building_name)                                        #our constructor to create a new building
    @address = address                                                          #address instance variable
    @building_name = building_name                                              #building_name instance variable
    @apartments = []                                                            #apartments instance variable is
  end                                                                           #ends the initialize method

  def to_s                                                                      #defines our to_s instance method
    "#{building_name} at #{address} has #{apartments.count} apartments."        #prints out building info. Contents below override the print of the default objectID
  end                                                                           #ends to_s method
end                                                                             #ends class
