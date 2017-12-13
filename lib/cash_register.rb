require 'pry'

class CashRegister

  attr_accessor :total
  attr_reader :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity=1)
    @price = price
    @total += @price * quantity
    quantity.times {@items.push(title)}
    #!@items.include?(title) ? @items.push(title) : false
  end

  def apply_discount
    if @discount >0
      @total -= (@discount.to_f / 100) * @total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end
