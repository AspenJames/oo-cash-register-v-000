class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, qty=1)
    self.total += price * qty
  end

  def apply_discount
    self.total *= (1-self.discount/100) if !self.discount.nil?

  end
end
