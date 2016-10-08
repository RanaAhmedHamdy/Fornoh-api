class Direction < ActiveRecord::Base
  belongs_to :recipe

  validates :title, :recipe_id, presence: true
end
