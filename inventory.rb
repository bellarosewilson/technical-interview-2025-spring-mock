class Inventory
  def initialize
    @supply_count = 2
  end
  
  def has_enough_supplies?(count)
    @supply_count >= count
  end
  
  def use_supplies(count)
    @supply_count -= count
  end
end
