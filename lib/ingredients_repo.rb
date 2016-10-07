class IngredientsRepo
	include Irepo

	def initialize
		@ings = []
		@ings << Ingredienttest.new(1,"tomato",1,1)
		@ings << Ingredienttest.new(1,"tomato",2,1)
		@ings << Ingredienttest.new(2,"tomato",5,6)
		@ings << Ingredienttest.new(3,"tomato",4,10)
	end

	def create(ingredient)
		@new_ing = Ingredienttest.new(ingredient["recipe_id"], ingredient["food"], 
			ingredient["unit_id"], ingredient["quantity"])
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

	def update(id, data)
		@ings.each do |ing|
	      if ing.id == id.to_i
	        ing.food = data["food"]
	        ing.unit_id = data["unit_id"]
	        ing.quantity = data["quantity"]
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
