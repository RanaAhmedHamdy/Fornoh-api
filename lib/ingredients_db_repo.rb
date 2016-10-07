class IngredientsDbRepo
	include Irepo

	def create(ingredient)
		@ingredient = Ingredient.new(ingredient)
		if @ingredient.save
			return "successfully created"
		else
			return "error"
		end
	end

	def update(id, ingredient)
		@ingredient = Ingredient.find(id)
		if @ingredient.update(ingredient)
			return "OK"
		else
			return "error"
		end
	end

	def delete(id)
		@ingredient = Ingredient.find(id)
		@ingredient.destroy
	end
end
