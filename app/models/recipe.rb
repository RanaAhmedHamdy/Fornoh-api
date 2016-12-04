class Recipe < ActiveRecord::Base
  belongs_to :category
  has_many :directions, dependent: :destroy
  has_many :ingredients, dependent: :destroy

  accepts_nested_attributes_for :directions
  accepts_nested_attributes_for :ingredients

  validates :name, :photo, :servings, :difficulty, :time, :category_id, presence: true
  validates :category_id, :difficulty, :servings, :numericality => true

  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
