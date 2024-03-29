class RecipesDbRepo
	include Irepo

	#in indexing we don't need ingredients or directions
	def index
		@recipes = Recipe.all
		return @recipes
	end

	def create(data)
		@recipe = Recipe.new(data)
		if @recipe.save
			return {status: 200, 
              message: "successfully created",
              created_category: @recipe}.to_json
	    else
	      return { status: 400, 
	               errors: @recipe.errors }.to_json
	    end
	end

	def read(id)
		@recipe = Recipe.find(id)
		return @recipe.to_json(:include => [:directions, :ingredients])
	end

	def update(id, data)
		@recipe = Recipe.find(id)
		if @recipe.update(data)
			return {status: 200, 
              message: "successfully updated",
              updated_category: @recipe}.to_json
	    else
	      return { status: 400, 
	               errors: @recipe.errors }.to_json
	    end
	end

	def delete(id)
		@recipe = Recipe.find(id)
		@recipe.destroy
	end
end
