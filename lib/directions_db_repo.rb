class DirectionsDbRepo
	include Irepo

	def create(direction)
		@direction = Direction.new(direction)
		if @direction.save
			return "successfully created"
		else
			return "error"
		end
	end

	def read(recipe_id)
		@direction = Direction.find(id)
		return @direction
	end

	def update(id, direction)
		@direction = Direction.find(id)
		if @direction.update(direction)
			return "OK"
		else
			return "error"
		end
	end

	def delete(id)
		@direction = Direction.find(id)
		@direction.destroy
	end
end
