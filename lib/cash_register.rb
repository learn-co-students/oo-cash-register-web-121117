
class CashRegister

  attr_accessor :discount, :total, :quantity, :last_price, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    # @title = title
    @total += price*quantity
    @quantity = quantity
    @last_price = price
    @quantity.times do @items << title end
  end

  def apply_discount
    if discount != 0
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    # @items.pop
    @total -= @last_price
  end

end
