require 'pry'
require 'pry-byebug'

class Renter
  attr_accessor :name, :credit_score, :annual_salary

  def initialize(name, credit_score, annual_salary)
    @name = name
    @credit_score = credit_score
    @annual_salary = annual_salary #transform into
  end

  def to_s
    "#{name} has a credit score of #{credit_score} and an annual salary of #{annual_salary}"
  end
end
