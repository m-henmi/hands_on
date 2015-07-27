require 'test/unit'

class TestExpense < Test::Unit::TestCase

  class Station
    attr_accessor :name
    def initialize(name)
      @name = name
    end
  end

  def test_deptname
    dept = DepartureStation.new("Shinagawa")
    assert_equal("Shinagawa", dept.name)
  end

  class DepartureStation < Station
  end

  def test_destname
    dest = DestinationStation.new("Shinjuku")
    assert_equal("Shinjuku", dest.name)
  end

  class DestinationStation < Station
  end

  def test_fare
    dept = DepartureStation.new("Shinagawa")
    dest = DestinationStation.new("Shinjuku")
    fare = Fare.new(200, dept, dest)
    assert_equal(200, fare.fare)
  end

  class Fare
    attr_accessor :fare, :dept, :dest

    def initialize(fare, dept, dest)
      @fare = fare
      @dept = dept
      @dest = dest
    end
  end

  def test_find_fare
    dept = DepartureStation.new("Shinagawa")
    dest = DestinationStation.new("Shinjuku")
    fare = Fare.new(200, dept, dest)
    fareTable = FareTable.new
    fareTable.add(fare)

    assert_equal(200, fareTable.find_fare(dept, dest))
  end

  class FareTable
    attr_accessor :fareTable

    def initialize()
      @fareTable = Array.new
    end
    
    def add(fare)
      @fareTable.push(fare)
    end

    def find_fare(dept, dest)
      fareFind = @fareTable.find {|f|
        f.dept == dept && f.dest == dest
      }
      return fareFind.fare
    end
  end
end
