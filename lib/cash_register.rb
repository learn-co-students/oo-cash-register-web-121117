class CashRegister

  attr_accessor :discount, :total, :attribute

  def initialize(discount = nil)
    @items = []
    @total = 0
    self.discount = discount
  end

  def add_item(title, price, quantity = 1)
    quantity.times {@items.push(title)}
    self.total += price * quantity
    self.attribute = price
  end

  def apply_discount
    if self.discount
      self.total -= self.total / 100 * self.discount
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.attribute
  end
end
