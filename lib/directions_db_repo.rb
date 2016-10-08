class DirectionsDbRepo
	include Irepo

	#useful if user want to add one more direction to an existing recipe
	def create(direction)
		@direction = Direction.new(direction)
		if @direction.save
			return {status: 200, 
              message: "successfully created",
              created_category: @direction}.to_json
    	else
		      return { status: 400, 
		               errors: @direction.errors }.to_json
    	end
	end

	def update(id, direction)
		@direction = Direction.find(id)
		if @direction.update(direction)
			return {status: 200, 
              message: "successfully updated",
              updated_category: @direction}.to_json
	     else
	      return { status: 400, 
	               errors: @direction.errors }.to_json
	     end
	end

	def delete(id)
		@direction = Direction.find(id)
		@direction.destroy
	end
end
