class Recipe < ActiveRecord::Base
  belongs_to :category
  has_many :directions, dependent: :destroy
  has_many :ingredients, dependent: :destroy

  accepts_nested_attributes_for :directions
  accepts_nested_attributes_for :ingredients
end
