class Directiontest
	attr_accessor :recipe_id, :title, :photo, :id

	def initialize(recipe_id, title, photo, id)
      @recipe_id = recipe_id
      @title = title
      @photo = photo
      @id = id
   end
end