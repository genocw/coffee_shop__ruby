require("minitest/autorun")
require("minitest/rg")
require_relative("../roaster.rb")

class TestRoaster < MiniTest::Test

  def setup
    @roaster1 = Roaster.new({
      "name"        =>  "Dark Arts Coffee",
      "location"    =>  "London, UK"
    })
  end

  def test_has_name()
    assert_equal("Dark Arts Coffee", @roaster1.name)
  end

  def test_has_location()
    assert_equal("London, UK", @roaster1.location)
  end

  def test_has_total_sold()
    assert_equal(0, @roaster1.total_sold)
  end

end
