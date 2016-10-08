class UnitsDbRepo
  include Irepo

  def index
    @units = Unit.all
    return @units
  end

  def create(unit)
    @unit = Unit.new(unit)
    if @unit.save
      return {status: 200, 
              message: "successfully created",
              created_category: @unit}.to_json
    else
      return { status: 400, 
               errors: @unit.errors }.to_json
    end
  end

  def read(id)
    @unit = Unit.find(id)
    return @unit
  end

  def update(id, data)
     @unit = Unit.find(id)
     if @unit.update(data)
      return {status: 200, 
              message: "successfully updated",
              updated_category: @unit}.to_json
     else
      return { status: 400, 
               errors: @unit.errors }.to_json
     end
  end

  def delete(id)
    @unit = Unit.find(id)
    @unit.destroy
  end
end
