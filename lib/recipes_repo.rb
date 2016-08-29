class RecipesRepo
	include Irepo

	def initialize
		@directions = DirectionsRepo.new
		@ings = IngredientsRepo.new
		@recipes = []
		@recipes << Recipetest.new(1, "fried chicken", "pjoto/1.png", 1)
		@recipes << Recipetest.new(2, "cheese cake", "pjoto/2.png", 2)
		@recipes << Recipetest.new(3, "chocolate cake", "pjoto/3.png", 2)
	end

	def index
	end

	def create
	end

	def read(id)
		@recipes.each do |recipe|
	      if recipe.id == id.to_i
	        recipe.ingredients = @ings.read(recipe.id)
	        recipe.directions = @directions.read(recipe.id)
	        return recipe
	      end
	    end
	end

	def update
	end

	def delete
	end
end
