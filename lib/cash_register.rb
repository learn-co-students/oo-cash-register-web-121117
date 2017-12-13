class CashRegister
  attr_accessor :total, :title, :last_price, :item_quantity, :items
  attr_reader :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @title = title
    @last_price = price
    @item_quantity = quantity
    self.total += price * quantity

    self.item_quantity.times do
      self.items << self.title
    end
  end

  def apply_discount
    if self.discount != 0
      self.total -= (self.total * self.discount.to_f / 100.0).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_price
  end
end
