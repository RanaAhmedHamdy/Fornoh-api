class Recipetest
	attr_accessor :id, :name, :photo, :categoryid, :ingredients, :directions

	def initialize(id, name, photo, categoryid)
      @id = id
      @name = name
      @photo = photo
      @categoryid = categoryid
   end
end