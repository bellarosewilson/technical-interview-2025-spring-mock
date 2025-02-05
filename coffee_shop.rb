require_relative 'coffee'
require_relative 'inventory'

class CoffeeShop
  def initialize
    @orders = []
    @inventory = Inventory.new
    @orders_left=true
  end

  def place_order(type, size)
    coffee = Coffee.new(type, size) 
    puts "📖 Placed order for a #{coffee.description}"  
    @orders.push(coffee)
  end

  def fulfill_orders
    puts "🔄 Fulfilling orders..."

    @orders.each do |coffee|
      pp coffee
      if @inventory.has_enough_supplies?(1)
        @inventory.use_supplies(1)
        puts "✅ Fulfilled order for #{coffee.description}"
        @orders.delete(coffee)
      else
        puts "❌ Insuficient supplies for #{coffee.description}"
        @orders.delete(coffee)
      end
      
    end

    clean_up
  end

  private

  def clean_up
      puts "🏁 There are #{@orders.length} orders remaining!"
  end
end
