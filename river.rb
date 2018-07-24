class River

  attr_reader :name

  attr_writer


  def initialize(name)
    @name = name
    @fish = []
  end

  def count_fish
    return @fish.length
  end

  def add_fish_to_river(fish)
    @fish.push(fish)
  end

  def eats_fish(fish)
    @fish.delete(fish)
  end

end
