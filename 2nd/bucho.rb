# coding: utf-8
class Bucho < Shain
  def standup
    puts "部長がだるそうに立ちました"
  end

  def calclate_salary(base_salary)
    return base_salary * 3
  end
end
