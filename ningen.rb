# coding: utf-8
class Ningen
  def initialize(name, shincho)
    @name = name
    @shincho = shincho
  end

  def taberu
    puts "食べています。"
  end

  def neru
    puts "寝ています。"
  end
end
