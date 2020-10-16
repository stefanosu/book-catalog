class AuthorController < ApplicationController

  def index 
    authors = Author.all
    render json: authors
  end


  def create 
    author = Author.create(author_params) 
    render json: author 
  end 

  def show 
    author = Author.find(params[:id])
    render json: author
  end


  def update
    if @author.update(author_params)
      render json: author
    else
      render json: author.errors, status: :unprocessable_entity
    end
  end

  # DELETE /authors/1
  def destroy
    @author.destroy
  end

  private 

  def author_params
  params.permit(:name, :bio)

  end

end
