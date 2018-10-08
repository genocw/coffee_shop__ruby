require("minitest/autorun")
require("minitest/rg")
require_relative("../coffee.rb")

class TestCoffee < MiniTest::Test

  def setup

    @coffee1 = Coffee.new({
      "name"            =>  "Volcan Azul",
      "roaster_id"      =>  "1",
      "profile"         =>  "Filter",
      "origin"          =>  "Costa Rica",
      "process"         =>  "Natural",
      "primary_taste"   =>  "Papaya",
      "in_stock"        =>  "t"
      })


  end

  def test_has_name()
    assert_equal("Volcan Azul", @coffee1.name)
  end

  def test_has_roaster_id()
    assert_equal(1, @coffee1.roaster_id)
  end

  def test_has_profile()
    assert_equal("Filter", @coffee1.profile)
  end

  def test_has_origin()
    assert_equal("Costa Rica", @coffee1.origin)
  end

  def test_has_process()
    assert_equal("Natural", @coffee1.process)
  end

  def test_has_primary_taste()
    assert_equal("Papaya", @coffee1.primary_taste)
  end

  def test_is_in_stock()
    assert_equal(true, @coffee1.in_stock?)
  end

  def test_has_total_sold()
    assert_equal(0, @coffee1.total_sold)
  end

end
