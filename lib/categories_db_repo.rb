class CategoriesDbRepo
  include Irepo

  def index
    @categs = Category.all
    return @categs
  end

  def create(category)
    @categ = Category.new(category)
    if @categ.save
      return {status: 200, 
              message: "successfully created",
              created_category: @categ}.to_json
    else
      return { status: 400, 
               errors: @categ.errors }.to_json
    end
  end

  def read(id)
    @categ = Category.find(id)
    return @categ
  end

  def update(id, data)
     @categ = Category.find(id)
     if @categ.update(data)
      return {status: 200, 
              message: "successfully updated",
              updated_category: @categ}.to_json
     else
      return { status: 400, 
               errors: @categ.errors }.to_json
     end
  end

  def delete(id)
    @categ = Category.find(id)
    if @categ.destroy
      return {status: 200, 
                message: "successfully deleted",
                deleted_category: @categ}.to_json
    else
      return { status: 400, 
               errors: @categ.errors }.to_json
    end
  end

end
