# coding: utf-8
class Yakushoku
  def ask
    puts ""
  end

  def calc
    0
  end
end

class Tanto < Yakushoku
  def ask
    puts "まずは様子を見ましょう"
  end

  def calc
    13620 + 2000
  end
end

class Shunin < Yakushoku
  def ask
    puts "積極的に攻めていきましょう"
  end

  def calc
    14450 + 3000
  end
end

class Bucho
  def ask
    puts "和せど同ぜず"
  end

  def calc
    18690 + 5000
  end
end

class Shain
  def initialize
    @yakushoku = Yakushoku.new
  end

  def ask
    @yakushoku.ask
  end

  def calc
    @yakushoku.calc
  end

  def set_yakushoku_tanto
    @yakushoku =  Tanto.new
  end

  def set_yakushoku_shunin
    @yakushoku = Shunin.new
  end

  def set_yakushoku_bucho
    @yakushoku = Bucho.new
  end
end

shain = Shain.new
shain.set_yakushoku_tanto
shain.ask
puts shain.calc
shain.set_yakushoku_shunin
shain.ask
puts shain.calc
shain.set_yakushoku_bucho
shain.ask
puts shain.calc
