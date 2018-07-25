require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")

class FishTest < MiniTest::Test


  # def setup()
  #   # if you only do one simple test, you may not need a setup
  #   # @fish1 = Fish.new("salmon")
  #   # @fish2 = Fish.new("cod")
  #   # @fish3 = Fish.new("trout")
  #   #
  #   # @fish = [@fish1, @fish2, @fish3]
  # end

  def test_get_name
    fish = Fish.new("salmon")
    assert_equal("salmon", fish.name)
  end

end
