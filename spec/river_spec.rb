require('minitest/rg')
require('minitest/autorun')
require_relative("../river")
require_relative("../fish")

class TestRiver < MiniTest::Test

  def setup
    @fish1 = Fish.new("Cod")
    @fish2 = Fish.new("Haddock")
    @fish3 = Fish.new("Salmon")
    @river = River.new("Thames", [@fish1, @fish2, @fish3])
  end

  def test_river_name
    assert_equal("Thames", @river.name)
  end

  def test_river_has_fish
    assert_equal(3, @river.river_has_fish)
  end

end
