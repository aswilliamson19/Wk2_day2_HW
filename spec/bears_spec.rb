require('minitest/rg')
require('minitest/autorun')
require_relative("../river")
require_relative("../fish")
require_relative("../bears")

class BearsTest < MiniTest::Test

  def setup
    @bear = Bears.new("Fuzzy", "Brown")
    @fish1 = Fish.new("Cod")
    @fish2 = Fish.new("Haddock")
    @fish3 = Fish.new("Salmon")
    @river = River.new("Thames", [@fish1, @fish2, @fish3])
  end

  def test_bear_name
    assert_equal("Fuzzy", @bear.name)
  end

  def test_bear_type
    assert_equal("Brown", @bear.type)
  end

  def test_if_bear_has_empty_stomach
    assert_equal(0, @bear.food_count())
  end




end
