require('minitest/autorun')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("trout")
    @fish3 = Fish.new("baby salmon")

    @river_stock = [@fish1, @fish2, @fish3]
    @river1 = River.new("Amazon", @river_stock)

    @bear1 = Bear.new("Yogi")
  end

  def test_river_has_name
    result = "Amazon"
    assert_equal(result, @river1.name)
  end

  def test_river_has_fish
    result = @river_stock
    assert_equal(result, @river1.river_stock)
  end

  def test_fish_count
    result = 3
    assert_equal(result,@river1.fish_count)
  end

  def test_river_stock_decreases_after_bear_eats_fish
    @bear1.add_fish_to_stomach(@fish1)
    actual_result = [@fish2, @fish3]
    expected_result = @river1.river_stock_decreases_after_bear_eats_fish
    assert_equal(actual_result, expected_result)
  end

end
