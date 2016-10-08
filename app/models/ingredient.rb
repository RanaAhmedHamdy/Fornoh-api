class Ingredient < ActiveRecord::Base
  belongs_to :unit
  belongs_to :recipe

  validates :food, :quantity, :unit_id, presence: true
  validates :quantity, :unit_id, :numericality => true
end
