require 'test/unit'

class TestCalc < Test::Unit::TestCase
  def add(first, second)
    first + second
  end

  def test_both_zero()
    assert_equal(0, add(0, 0))
  end

  def test_first_zero()
    assert_equal(3, add(0, 3))
  end

  def test_second_zero()
    assert_equal(2, add(2, 0))
  end

  def test_both_not_zero()
    assert_equal(5, add(2, 3))
  end
end
