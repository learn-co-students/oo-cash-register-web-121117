require "pry"
class CashRegister
  attr_accessor :total, :discount, :items, :last_price


  def initialize(discount = 1)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
    quantity.times {@items << item}
    @last_price = price*quantity
  end

  def apply_discount
    @total = @total - (@discount * @total)/100
    @total == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
  end

  def void_last_transaction
    @total -= @last_price


  end

end
