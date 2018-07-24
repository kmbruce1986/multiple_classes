require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")

class FishTest < MiniTest::Test


  def setup()
    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("cod")
    @fish3 = Fish.new("trout")

    @fish = [@fish1, @fish2, @fish3]
  end

  def test_get_name
    assert_equal("salmon", @fish1.name)
  end

  def test_number_of_fish
    assert_equal(3, @fish.count)
  end
end
