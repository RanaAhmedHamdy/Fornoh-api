class Unit < ActiveRecord::Base
	validates :name, presence: true
	validate_uniqueness_of :name
end
