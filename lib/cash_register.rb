class CashRegister

  attr_accessor :total, :discount, :items, :last_price

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @last_price = price*quantity
    @total += @last_price
    quantity.times {@items << item}
  end

  def apply_discount
    @total = @total - (@total * @discount/100)
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_price
  end

end
