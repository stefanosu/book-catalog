class BookController < ApplicationController

def create
  Book.create(book_params)
end

def index 
  books = Book.all 
  render json: books
end


def show
  book = Book.find(params[:id])
  render json: book
end

def update
  book = Book.find(params[:id])
  if book.update(book_params)
      render json: book
  else
      render json: book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/1
  def destroy
    book = Book.find(params[:id])
    book.destroy
  end

private 

def book_params 
  params.permit(:title, :img, :author_id, :category_id)
end

end
