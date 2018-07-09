class Order < ApplicationRecord
  belongs_to :user, :optional => true #Remove optional later
  belongs_to :situation
end
