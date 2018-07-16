class MealCategory < ApplicationRecord
  has_many :meals, dependent: :destroy
  validates :name, presence: true, uniqueness: { case_sensitive: false }  
end
