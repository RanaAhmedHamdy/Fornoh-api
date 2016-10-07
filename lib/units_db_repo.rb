class UnitsDbRepo
  include Irepo

  def index
    @units = Unit.all
    return @units
  end

  def create(unit)
    @unit = Unit.new(unit)
    if @unit.save
      return "successfully created"
    else
      return "error"
    end
  end

  def read(id)
    @unit = Unit.find(id)
    return @unit
  end

  def update(id, data)
     @unit = Unit.find(id)
     if @unit.update(data)
      return "OK"
     else
      return "error"
     end
  end

  def delete(id)
    @unit = Unit.find(id)
    @unit.destroy
  end
end
