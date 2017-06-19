class Order < ApplicationRecord
  validates :name, :email, :address, presence: true
  validates :pay_type, inclusion: pay_types.keys
  enum pay_types: {
    "Check" => 0,
    "Credit Card" => 1,
    "Purchase Order" => 2
  }
end
