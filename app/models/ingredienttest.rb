class Ingredienttest
	attr_accessor :recipe_id, :food, :unit_id, :quantity
	attr_reader :id
	@@instance_counter = 0
	def initialize(recipe_id, food, unit_id, quantity)
      @recipe_id = recipe_id
      @food = food
      @unit_id = unit_id
      @quantity = quantity
      @id = @@instance_counter
      @@instance_counter +=1
   end
end