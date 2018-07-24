require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bears.rb")

class RiverTest < MiniTest::Test


  def setup()
    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("cod")
    @fish3 = Fish.new("trout")
    # @all_fish = [salmon, cod, trout]
    @river = River.new("Amazon")
  end

  def test_get_name()
    assert_equal("Amazon", @river.name)
  end

  def test_add_fish_to_river()
    fish = Fish.new("Basa")
    @river.add_fish_to_river(fish)
    assert_equal(1, @river.count_fish)
  end

  def test_number_of_fish()
    @river.add_fish_to_river(@fish1)
    assert_equal(1, @river.count_fish)
  end

  def test_bear_eats_fish
    @bear1 = Bears.new("Alfie", "Brown")
    @bear1.eats_fish(@fish1)
    assert_equal(0, @river.count_fish)
  end
  #
  # def test_lose_fish_when_bear_gets_hungry(fish)
  #   @bear.eats_fish(fish)
  #   assert_equal(2, @all_fish.count)
  # end


end
