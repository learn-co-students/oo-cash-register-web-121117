require ("pry")

class CashRegister

  attr_accessor :discount, :total, :lasttransaction


  def initialize(discount = nil)
    @total = 0
    self.discount = discount
    @all = []
  end

  def add_item(title,price,quantity = 1)
    self.total += price*quantity
    quantity.times { @all << title }
    @lasttransaction = price
  end

  def apply_discount
    if self.discount
      self.total -= self.total*self.discount/100
      return "After the discount, the total comes to $800."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @all
  end

  def void_last_transaction
    @total -= @lasttransaction
  end

end
