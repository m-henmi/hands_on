# coding: utf-8
require_relative 'salary'

class Shain
include Salary
  def initialize(kihonkyu)
    @kihonkyu = kihonkyu
  end
  
  def standup
    puts "社員はとりあえず起立する"
  end

  def calclate_salary(base_salary)
    return base_salary
  end
end
