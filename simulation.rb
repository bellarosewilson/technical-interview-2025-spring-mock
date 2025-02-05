require_relative 'coffee_shop'

shop = CoffeeShop.new

puts "☕ Welcome to Inventory Java Haven!"

shop.place_order("Latte", "Medium")
shop.place_order("Cappuccino", "Large")
shop.place_order("Espresso", "Small")

shop.fulfill_orders
