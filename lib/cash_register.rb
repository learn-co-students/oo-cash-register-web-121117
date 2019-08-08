require 'pry'

class CashRegister
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @basket = []
  end

  attr_accessor :total, :discount, :last_transaction
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_transaction = price * quantity
    quantity.times do
      @basket << title
    end
  end

  def apply_discount
    if @discount
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @basket
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end



# register = CashRegister.new(20)
# register.add_item("eggs", 100)
# register.apply_discount