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
    self.total -= discount if !discount.nil?

  end
end
