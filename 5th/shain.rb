# coding: utf-8
module Salary
  def calculate_salary
    kihon + teate
  end

  def kihon
    @kihonkyu
  end

  def teate
    0
  end
end

class Shain
  include Salary
  def initialize(kihonkyu)
    @kihonkyu = kihonkyu
  end
end

class Tanto < Shain
  def standup
    "新入社員は慌てて起立しました"
  end
end

class Shunin < Shain
  def standup
    "主任は普通に起立しました"
  end
end

class Bucho < Shain
  def standup
    "部長はゆっくり起立しました"
  end
end

class Torishimari < Shain
  def standup
    "取締役はちんたら起立しました"
  end
end

class ShainFactory
  def create(type, kihonkyu)
    shain = nil

    if type == 'Tanto'
      shain = Tanto.new(kihonkyu)
    elsif type == 'Shunin'
      shain = Shunin.new(kihonkyu)
    elsif type == 'Bucho'
      shain = Bucho.new(kihonkyu)
    elsif type == 'Torishimari'
      shain = Torishimari.new(Torishimari)
    end

    shain
  end
end
