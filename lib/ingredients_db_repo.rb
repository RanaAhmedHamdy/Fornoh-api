class IngredientsDbRepo
	include Irepo

	def create(ingredient)
		@ingredient = Ingredient.new(ingredient)
		if @ingredient.save
			return {status: 200, 
              message: "successfully created",
              created_category: @ingredient}.to_json
	    else
	      return { status: 400, 
	               errors: @ingredient.errors }.to_json
	    end
	end

	def update(id, ingredient)
		@ingredient = Ingredient.find(id)
		if @ingredient.update(ingredient)
			return {status: 200, 
              message: "successfully updated",
              updated_category: @ingredient}.to_json
	    else
	        return { status: 400, 
	               errors: @ingredient.errors }.to_json
	    end
	end

	def delete(id)
		@ingredient = Ingredient.find(id)
		@ingredient.destroy
	end
end
