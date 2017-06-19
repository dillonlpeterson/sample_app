class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    quantity * product.price 
  end

  def decrement
    if quantity > 1
      quantity-=1
    else
      self.destroy
    end
    self
  end
end
