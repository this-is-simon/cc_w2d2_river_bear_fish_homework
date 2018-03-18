require('minitest/autorun')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("trout")
    @fish3 = Fish.new("baby salmon")
  end

  def test_fish_has_species
    result = "salmon"
    assert_equal(result, @fish1.species)
  end

  def test_can_say_i_am_a_fish
    result = "I'm a salmon! Please don't eat me."
    assert_equal(result, @fish1.say_im_a_fish)
  end
end
