require_relative('./river')

class Bear

  attr_reader :name
  attr_accessor :stomach

  def initialize(input_bear_name)
    @name = input_bear_name
    @stomach = []
  end

  def bear_can_say_name
    return "My name is #{@name}! Give me fish."
  end

  def add_fish_to_stomach(a_fish)
    @stomach << a_fish
  end

  def is_bear_starving
    if @stomach == []
      return true
    else
      return false
    end
  end

  def hunt_for_fish(a_river)
    fish_being_eaten = a_river.river_stock_decreases_after_bear_eats_fish()
    @stomach << fish_being_eaten
  end

end
