
class CategoriesRepo
  include Irepo
  
  def initialize
    @categs = []
    @categs << Categorytest.new(1, "main dishes")
    @categs << Categorytest.new(2, "desserts")
  end

  def index
    return @categs
  end

  def create(category)
    @new_category = Categorytest.new(category["id"], category["name"])
    @categs << @new_category
    return @new_category
  end

  def read(id)
    @categs.each do |categ|
      if categ.id == id.to_i
        return categ
      end
    end
  end

  def update(data)
     @categs.each do |categ|
      if categ.id == data["id"].to_i
        categ.name = data["name"]
        return categ
      end
    end
    return "error"
  end

  def delete(id)
    @categs.each do |categ|
      if categ.id == id.to_i
        @categs.delete(categ)
        return "deleted successfully"
      end
    end
    return "item not found"
  end
end