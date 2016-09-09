class Recipetest
	attr_accessor :name, :photo, :categoryid, :ingredients, :directions
	attr_reader :id
	@@instance_counter = 0
	def initialize(name, photo, categoryid)
	  @id = @@instance_counter
	  @@instance_counter += 1
      @name = name
      @photo = photo
      @categoryid = categoryid
   end
end