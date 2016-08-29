class Ingredienttest
	attr_accessor :recipe_id, :food_id, :unit_id, :id

	def initialize(recipe_id, food_id, unit_id, id)
      @recipe_id = recipe_id
      @food_id = food_id
      @unit_id = unit_id
      @id = id
   end
end