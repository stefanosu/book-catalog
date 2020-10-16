class CategoryController < ApplicationController 

  def index 
    category = Category.all 
    render json: category
  end


  def create 
    Category.create(category_params)
    render json: category 
  end


  def show
    category = Category.find(params[:id])
    render json: category
  end

  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categorys/1
  def destroy
    @category.destroy
  end

private 

def category_params 
  params.require(:category).permit(:name, :img)
end 

end
