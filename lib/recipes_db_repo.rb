class RecipesDbRepo
	include Irepo

	def index
		@recipes = Recipe.all
		return @recipes
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
	    return "recipe not found"
	end

	def update
	end

	def delete
	end
end
