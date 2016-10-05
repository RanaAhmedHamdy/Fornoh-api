class RepoPool
	class << self
		protected :new
		def get_repo(repo)
			if @@repos[repo]
				return @@repos[repo]
			else
				raise "not found repo"
			end
		end
	end
	@@repos = Hash.new
	@@repos["categories"] = CategoriesRepo.new
	@@repos["directions"] = DirectionsRepo.new
	@@repos["ingredients"] = IngredientsRepo.new
	@@repos["recipes"] = RecipesRepo.new

	@@repos["categoriesdb"] = CategoriesDbRepo.new
	@@repos["directionsdb"] = DirectionsDbRepo.new
	@@repos["ingredientsdb"] = IngredientsDbRepo.new
	@@repos["recipesdb"] = RecipesDbRepo.new
	
end