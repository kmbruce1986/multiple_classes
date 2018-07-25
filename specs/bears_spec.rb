require("minitest/autorun")
require("minitest/rg")

require_relative("../bears.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearsTest < MiniTest::Test


  def setup()
    @bear = Bears.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Sammy")
    @fish2 = Fish.new("Nemo")
    @river = River.new("Amazon", [@fish1, @fish2])

  end

  def test_get_name
    assert_equal("Yogi", @bear.name)
  end

  def test_get_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_stomach_count
    assert_equal(0, @bear.stomach_count)
  end

  def test_roar
    assert_equal("I'm sick of fish!", @bear.roar("I'm sick of fish!"))
  end

  def test_bear_can_get_fish_from_river
    @bear.take_fish(@river)
    assert_equal(1, @river.count_fish())
    assert_equal(1, @bear.stomach_count())
  end

  # def test_add_fish_to_stomach(fish)
  #   fish = Fish.new("salmon")
  #
  #   @bear.eats_fish(fish)
  #
  #   assert_equal(1, @bear.stomach_count)
  #   assert_equal(2, @all_fish.count)
  # end
end
