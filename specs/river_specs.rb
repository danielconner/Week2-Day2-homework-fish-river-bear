require ("minitest/autorun")
require ("minitest/rg")

require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")


class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Tony")
    @fish2 = Fish.new("Mark")
    @fish3 = Fish.new("Davy")
    @fish4 = Fish.new("Spencer")
  end

  def test_get_river_name
    assert_equal("Amazon",@river.name)
  end

  def test_fish_count
    assert_equal(0,@river.fish_count())
  end

  def test_add_fish_from_river()
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    @river.add_fish_to_river(@fish4)
    assert_equal(4, @river.fish_count())
  end

  def test_remove_fish_from_river
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    @river.add_fish_to_river(@fish4)
    @river.remove_fish_from_river(@fish2)
    assert_equal(3, @river.fish_count())
  end 


end
