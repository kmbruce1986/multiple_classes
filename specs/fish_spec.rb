require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")

class FishTest < MiniTest::Test


  def setup()
    @fish1 = Fish.new("salmon")
  end

  def test_get_name
assert_equal("salmon", @fish1.name)
  end
end
