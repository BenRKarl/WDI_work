class BooksController < ApplicationController
  def index
    @Books = Book.all

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
  def create
    book = Book.create(person_params)
    redirect_to book_path(person)
  end
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book)
  end
  def new
  end
  def destroy
    Book.delete(params[:id])
    redirect_to Books_path
  end
  private

  def book_params
    params.require(:book).permit(:name, :email)
  end

end
