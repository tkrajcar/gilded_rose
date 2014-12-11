# item.rb
# Belongs to the goblin in the corner.

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize (name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def ==(other_item)
    self.name == other_item.name &&
    self.sell_in == other_item.sell_in &&
    self.quality == other_item.quality
  end
end
