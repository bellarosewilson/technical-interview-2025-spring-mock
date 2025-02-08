require_relative 'coffee'
require_relative 'inventory'

class CoffeeShop
  def initialize
    @orders = []
    @inventory = Inventory.new
  end

  def place_order(type, size)
    # Log the size and type of coffee ordered
    puts "📖 Placed order for a #{size.capitalize} #{type.capitalize}" # FIXED
    coffee = Coffee.new(type, size)
    @orders.push(coffee)
  end

  def fulfill_orders
    puts "🔄 Fulfilling orders..."

    @orders.each do |coffee|
      if @inventory.has_enough_supplies?(1) # Check if there are enough supplies
        @inventory.use_supplies(1)
        # Log when an order is fulfilled
        puts "✅ Fulfilled order for #{coffee.size.capitalize} #{coffee.type.capitalize}" # FIXED
      else
        # Log when an order cannot be fulfilled
        puts "❌ Insufficient supplies for #{coffee.size.capitalize} #{coffee.type.capitalize}" # FIXED
      end
    end

    clean_up
    @orders.clear
  end

  private

  def clean_up
    # Log when all orders are complete
    puts "🏁 There are #{@orders.count} orders remaining!" # FIXED
  end
end
