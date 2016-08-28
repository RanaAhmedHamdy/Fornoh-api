
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

  def create
  end

  def read(id)
    @categs.each do |categ|
      if categ.id == id.to_i
        return categ
      end
    end
  end

  def update(id)
  end

  def delete(id)
  end
end