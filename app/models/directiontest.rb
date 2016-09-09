class Directiontest
	attr_accessor :recipe_id, :title, :photo, :description
	attr_reader :id
	@@instance_counter = 0
	def initialize(recipe_id, title, photo)
      @recipe_id = recipe_id
      @title = title
      @photo = photo
      @id = @@instance_counter
      @@instance_counter += 1
   end
end
