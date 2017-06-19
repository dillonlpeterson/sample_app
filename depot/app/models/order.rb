class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  validates :name, :email, :address, presence: true
  validates :pay_type, inclusion: pay_types.keys
  enum pay_types: {
    "Check" => 0,
    "Credit Card" => 1,
    "Purchase Order" => 2
  }

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
