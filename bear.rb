class Bear

  attr_accessor :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def roar
    return "roar"
  end

  def food_count
    @stomach.count()
  end

  def take_fish_from_river(fish)
    @stomach << fish
  end



end
