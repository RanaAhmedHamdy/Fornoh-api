class Ingredienttest
	attr_accessor :recipe_id, :food_id, :unit_id

	def initialize(recipe_id, food_id, unit_id)
      @recipe_id = recipe_id
      @food_id = food_id
      @unit_id = unit_id
   end
end