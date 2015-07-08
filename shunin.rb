# coding: utf-8
class Shunin < Shain
  def standup
    puts "主任が素早く立ちました"
  end

  def calclate_salary(base_salary)
    return base_salary * 2 + 1
  end
end
