require 'pry'

class CashRegister
  attr_accessor :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @total += price*quantity
    quantity.times{@items << item}
    @last_transaction = price*quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = (@total*(1.0 - @discount.to_f/100.0)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
