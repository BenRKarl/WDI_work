class BooksController < ApplicationController

  def index
    @books = Book.all
    respond_to do |format|
      format.json { render :json => @books.to_json }
      format.html 
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book)
  end

  def destroy
    book = Book.delete(params[:id])
    redirect_to books_path
  end

  def create
    book = Book.create(book_params)
    redirect_to book_path(book)
  end

  def new
  
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end

end
