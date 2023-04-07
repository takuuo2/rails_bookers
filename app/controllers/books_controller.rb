class BooksController < ApplicationController
  def new
    @book = Book.new
    @books = Book.all
  end

  def create
    book = Book.new(book_params)

    book.save

    redirect_to'/books/new' #showに持っていきたい
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end

end
