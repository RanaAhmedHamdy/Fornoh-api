class RecipesDbRepo
	include Irepo

	#in indexing we don't need ingredients or directions
	def index
		@recipes = Recipe.all
		return @recipes
	end

	def create(data)
		@recipe = Recipe.create(data)
		#if @recipe.save
		#	return "successfully created"
		#else
		#	return "error"
		#end
	end

	def read(id)
		@recipe = Recipe.find(id)
		return @recipe
	end

	def update(id, data)
		@recipe = Recipe.find(id)
		if @recipe.update(data)
			return "OK"
		else
			return "error"
		end
	end

	def delete(id)
		@recipe = Recipe.find(id)
		@recipe.destroy
	end
end
