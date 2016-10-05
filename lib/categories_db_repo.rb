class CategoriesDbRepo
  include Irepo

  def index
    @categs = Category.all
    return @categs
  end

  def create(category)
    @categ = Category.new(category)
    if @categ.save
      return "successfully created"
    else
      return "error"
    end
  end

  def read(id)
    @categ = Category.find(id)
    return @categ
  end

  def update(id, data)
     @categ = Category.find(id)
     if @categ.update(data)
      return "OK"
     else
      return "error"
     end
  end

  def delete(id)
    @categ = Category.find(id)
    @categ.destroy
  end

end
