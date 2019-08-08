class CashRegister
  attr_accessor :total, :discount, :items, :last_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item,price, quantity = 1)
    @total = @total + (price * quantity)
    quantity.times do
      @items<<item
    end
    @last_price = price * quantity
    # this is the last price because price, as a variable, it is overritten
    # by each preceding iteration - it's final value is price of last item
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total - (@discount *@total)/100
      "After the discount, the total comes to $#{@total}."
    end
  end
  #
  # def items
  #   @items
  # end
  # This is not necessary now that we have an attr_accessor for :items
  #
  def void_last_transaction
    @total -= @last_price
  end
end
