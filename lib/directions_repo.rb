class DirectionsRepo
	include Irepo
	
	def initialize
		@directions = []
		@directions << Directiontest.new(1,"put salt","image1.jpg",1)
		@directions << Directiontest.new(1,"put water", "i2.png",2)
		@directions << Directiontest.new(2, "shake", "3.png", 3)
		@directions << Directiontest.new(3,"put in oven", "4.png",4)
	end

	def create(direction)
		@new_dir = Directiontest.new(direction["recipe_id"], direction["title"], 
			direction["photo"], direction["id"])
	    @directions << @new_dir
	    return @new_dir
	end

	def read(recipe_id)
		@output = []
		@directions.each do |dir|
	      if dir.recipe_id == recipe_id.to_i
	        @output << dir
	      end
	    end
	    return @output
	end

	def update(data)
		@directions.each do |dir|
	      if dir.id == data["id"].to_i
	        dir.title = data["title"]
	        dir.photo = data["photo"]
	        return dir
	      end
	    end
	    return "error"
	end

	def delete(id)
		@directions.each do |dir|
	      if dir.id == id.to_i
	        @directions.delete(dir)
	        return "deleted successfully"
	      end
	    end
	    return "item not found"
	end
end