class Order < ApplicationRecord
  belongs_to :users
  belongs_to :situations
  has_many :order_meals
end
