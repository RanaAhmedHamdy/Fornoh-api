class Ingredienttest
	attr_accessor :recipe_id, :food_id, :unit_id
	attr_reader :id
	@@instance_counter = 0
	def initialize(recipe_id, food_id, unit_id)
      @recipe_id = recipe_id
      @food_id = food_id
      @unit_id = unit_id
      @id = @@instance_counter
      @@instance_counter +=1
   end
end