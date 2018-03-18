require_relative('./bear')

class River

  attr_reader :name
  attr_accessor :river_stock

  def initialize(input_name, input_river_stock)
    @name = input_name
    @river_stock = input_river_stock
  end

  def fish_count
    @river_stock.length
  end

  def river_stock_decreases_after_bear_eats_fish
    @river_stock.shift()
    return @river_stock
  end
  
end
