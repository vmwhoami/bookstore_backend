class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    render json: Book.all
  end
  def new
    @book = Book.new
  end
  def create
    @book = Book.new(books_params)
    if @book.save
      render json: @book
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      render json: @book
    end
  end

  private 
   def books_params
    params.require(:books).permit(:name, :category)
   end
end
