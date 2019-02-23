require "pry"

class CashRegister
  attr_reader :discount
  attr_accessor :total
  
  def initialize(discount=false)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      @items << title
    end
  end
  
  def items
    @items
  end
  
  def apply_discount
    if self.discount != false
      difference = self.total * (self.discount/100.to_f)
      self.total -= difference.to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self
  end
end
