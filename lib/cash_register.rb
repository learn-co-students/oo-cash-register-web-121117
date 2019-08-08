require 'pry'

class CashRegister

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def total=(total)
    @total = total
  end

  def add_item(title, price, quantity=1)
    @currentItem = price * quantity
      @total += @currentItem
      counter = 0
      while counter < quantity
        @cart << title
        counter +=1
      end
  end

  def apply_discount
    if discount > 0
      @total *= 1 - (@discount * 0.01)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @currentItem
  end
end
