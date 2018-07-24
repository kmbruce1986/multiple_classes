require("minitest/autorun")
require("minitest/rg")

require_relative("../bears.rb")
require_relative("../fish.rb")

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

  def test_stomach_count
    assert_equal(0, @bear.stomach_count)
  end

  def test_roar
    assert_equal("I'm sick of fish!", @bear.roar())
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
