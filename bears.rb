class Bears

  attr_reader :name, :type

  attr_writer


  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_count
    return @stomach.length
  end

  def eats_fish(fish)
    @stomach << fish
  end

  def roar(phrase)
    return "#{phrase}"
  end

end
