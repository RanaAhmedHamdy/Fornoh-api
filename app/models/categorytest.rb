class Categorytest
	attr_accessor :name
	attr_reader :id
	@@instance_counter = 0
	def initialize(name)
      @id = @@instance_counter
			@@instance_counter += 1
      @name = name
   end
end
