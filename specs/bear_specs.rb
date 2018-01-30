require ("minitest/autorun")
require ("minitest/rg")

require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi")
    @fish1 = Fish.new("Tony")
    @fish2 = Fish.new("Mark")
    @fish3 = Fish.new("Davy")
    @fish4 = Fish.new("Spencer")
    @river = River.new("Amazon")
  end

  def test_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_can_roar
    assert_equal("roar", @bear.roar)
  end

  def test_food_count
    assert_equal(0, @bear.food_count())
  end

  def test_add_to_bears_stomach
    @bear.take_fish_from_river(@fish1)
    assert_equal(1, @bear.food_count())
  end

  def test_bear_takes_fish_from_river
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    @river.add_fish_to_river(@fish4)
    @river.remove_fish_from_river(@fish2)
    @bear.take_fish_from_river(@fish2)
    assert_equal(1, @bear.food_count())
    assert_equal(3, @river.fish_count())
  end


end
