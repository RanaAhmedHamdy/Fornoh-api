class Category < ActiveRecord::Base
	has_many :recipes

	validates :name, presence: true
	validate_uniqueness_of :name
end
