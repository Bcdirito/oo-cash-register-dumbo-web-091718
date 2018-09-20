class CashRegister

  def initialize(employee=nil)
    @total = 0
    @employee ||= nil
    @employee = employee
    @items = []
  end

  def discount
    @discount = 20
  end

  def total=(total)
    @total = total
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity

    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @employee == nil
      return "There is no discount to apply."
    else
      self.total= total - (total * (discount/100.0))
      self.total=total.to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @total
  end
end
