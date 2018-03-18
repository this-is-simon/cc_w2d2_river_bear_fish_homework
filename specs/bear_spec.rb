require('minitest/autorun')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi")

    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("trout")
    @fish3 = Fish.new("baby salmon")

    @river_stock = [@fish1, @fish2, @fish3]

    @river1 = River.new("Amazon", @river_stock)
  end

  def test_bear_has_name
    result = "Yogi"
    assert_equal(result, @bear1.name)
  end

  def test_bear_can_say_name
    result = "My name is Yogi! Give me fish."
    assert_equal(result, @bear1.bear_can_say_name)
  end

  def test_can_eat_a_fish
    @bear1.add_fish_to_stomach(@fish1)
    actual_result = [@fish1]
    expected_result = @bear1.stomach
    assert_equal(actual_result, expected_result)
  end

  def test_is_starving?
    assert_equal(true, @bear1.is_bear_starving)
    @bear1.add_fish_to_stomach(@fish1)
    assert_equal(false, @bear1.is_bear_starving)
  end

  def test_bear_hunt_for_fish
    @bear1.hunt_for_fish(@river1)
    assert_equal([@fish2, @fish3], @river1.river_stock)
    # assert_equal([@fish1], @bear1.stomach)
  end

end
