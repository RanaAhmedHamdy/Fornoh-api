class Direction < ActiveRecord::Base
  belongs_to :recipe

  validates :title, presence: true

  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
