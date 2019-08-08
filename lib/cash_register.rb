require 'pry'

class CashRegister
  attr_accessor :total
  attr_accessor :discount
  attr_accessor :title
  attr_accessor :last_item_price
  attr_accessor :item_quantity
  attr_accessor :item_cart

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @item_cart = []
  end

  def add_item (title, price, quantity = 1)
    @title = title
    @last_item_price = price
    @item_quantity = quantity
    @total += price*quantity
    @item_quantity.times do @item_cart << @title
    end
  end

  def apply_discount
    if @discount != 0
      @total -= @total*@discount/100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @item_cart
  end

  def void_last_transaction
    @item_cart.pop
    @total -= @last_item_price
  end

end
