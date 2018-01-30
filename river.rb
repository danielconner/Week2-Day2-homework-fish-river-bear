class River

  attr_accessor :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count
    @fish.count()
  end

  def add_fish_to_river(name)
    @fish << name
  end

  def remove_fish_from_river(name)
    @fish.delete(name)
  end 



end
