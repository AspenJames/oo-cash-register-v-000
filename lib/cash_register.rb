require'pry'
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
    if !self.discount.nil?
      self.total.to_i *= (1-self.discount.to_f/100)
      puts "After the discount, the total comes to $#{self.total}."
    end
  end
end
