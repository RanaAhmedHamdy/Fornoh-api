class Ingredient < ActiveRecord::Base
  belongs_to :unit
  belongs_to :recipe

  validates :food, :quantity, :unit_id, :recipe_id, presence: true
end
