require("minitest/autorun")
require("minitest/rg")

require_relative("../bears.rb")

class BearsTest < MiniTest::Test


  def setup()
    @bear = Bears.new("Yogi", "Grizzly")
  end

  def test_get_name
    assert_equal("Yogi", @bear.name)
  end

  def test_get_type
    assert_equal("Grizzly", @bear.type)
  end
end
