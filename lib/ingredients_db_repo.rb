class IngredientsDbRepo
	include Irepo

	def create(ingredient)
		@new_ing = Ingredienttest.new(ingredient["recipe_id"], ingredient["food_id"], 
			ingredient["unit_id"])
	    @ings << @new_ing
	    return @new_ing
	end

	def read(recipe_id)
		@output = []
		@ings.each do |ing|
	      if ing.recipe_id == recipe_id.to_i
	        @output << ing
	      end
	    end
	    return @output
	end

	def update(data)
		@ings.each do |ing|
	      if ing.id == data["id"].to_i
	        ing.food_id = data["food_id"]
	        ing.unit_id = data["unit_id"]
	        return ing
	      end
	    end
	    return "error"
	end

	def delete(id)
		@ings.each do |ing|
	      if ing.id == id.to_i
	        @ings.delete(ing)
	        return "deleted successfully"
	      end
	    end
	    return "item not found"
	end
end
