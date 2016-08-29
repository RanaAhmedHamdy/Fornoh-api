class DirectionsRepo
	include Irepo
	
	def initialize
		@directions = []
		@directions << Directiontest.new(1,"put salt","image1.jpg",1)
		@directions << Directiontest.new(1,"put water", "i2.png",2)
		@directions << Directiontest.new(2, "shake", "3.png", 3)
		@directions << Directiontest.new(3,"put in oven", "4.png",4)
	end

	def create
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

	def update
	end

	def delete
	end
end