# Problem 1:
# Write a class called Coffee shop, which has three instance variables:

# name : a string
# menu : an array of items, with each item being a hash containing the keys :item (name of the item), :type (whether it is a food or a drink), and :price.
# orders : an empty array
# and four methods:

# add_order: add the name of the item to the end of the orders array if it exists on the menu. If not, return "This item is unavailable, sorry!"
# fulfill_order: if the orders array is not empty, return "The #{item} is ready!". If the orders array is empty, return "No orders to fulfill!"
# cheapest_item: return the name of the cheapest item on the menu.
# drinks_only: return the names of only the drink items on the menu.
# Note: Orders are fulfilled in a FIFO (first-in, first-out) order.

# Examples
# cs1.add_order("hot cocoa") ➞ "Sorry, this item is unavailable."
# # A Little Spice coffee shop does not sell hot cocoa

# cs1.add_order("cinnamon roll") ➞  "Order added!"
# cs1.add_order("iced coffee") ➞ "Order added!"
# cs1.orders ➞ ["cinnamon roll", "iced coffee"]
# # All current orders are listed.

# cs1.fulfill_order ➞ "The cinnamon roll is ready!"
# cs1.fulfill_order ➞"The iced coffee is ready!"
# cs1.orders ➞ []
# # All orders have been fulfilled

# cs1.cheapest_item ➞ "lemon tea"
# cs1.drinks_only ➞ ["hot chocolate", "lemon tea", "iced coffee", "vanilla chai latte"]
class CoffeeShop
  attr_reader :name, :menu, :orders

  def initialize(name, menu)
    @name = name
    @menu = menu
    @orders = []
  end

  def add_order(order)
    if @menu.map { |x| x[:item] }.include?(order)
      @orders.push(order)
      return "Order added!"
    else
      return "Sorry, this item is unavailable."
    end
  end

  def fulfill_order
    if @orders.size == 0
      return "No orders to fulfill!"
    else
      order = @orders.shift
      return "The #{order} is ready!"
    end
  end

  def cheapest_item
    min_cost = @menu.map { |x| x[:price] }.min
    return @menu.select { |x| x[:price] == min_cost }[0][:item]
  end

  def drinks_only
    return @menu.select { |x| x[:type] == "drink" }.map { |x| x[:item] }
  end
end
