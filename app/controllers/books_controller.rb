class BooksController < ApplicationController
  def index
    return
   json: Book.all
  end
  def new
    @book = Book.new
  end
  def create
    @book = Book.new(books_params)
    if @book.save
      return json: @book
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      return json: @book
  end

  private 
   def books_params
    params.require(:books).permit(:serialNo, :name, :categories)
   end
end
