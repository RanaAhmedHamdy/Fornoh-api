class IngredientsRepo
	include Irepo

	def initialize
		@ings = []
		@ings << Ingredienttest.new(1,1,1)
		@ings << Ingredienttest.new(1,2,1)
		@ings << Ingredienttest.new(2,5,6)
		@ings << Ingredienttest.new(3,4,10)
	end

	def create
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

	def update
	end

	def delete
	end
end
