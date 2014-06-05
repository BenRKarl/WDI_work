class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.json { render :json => @books.to_json } # if format is json, than render some json
      format.html # if format is html, than render html
    end  
    
  end

  def show
    @book = Book.find(params[:id])     
  end

  def new
  end

  def create  
    book = Book.create(book_params)
    # book_path is a Rails generated path to the show view 
    redirect_to book_path(book)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update( book_params )
    redirect_to book_path(book)
  end

  # def new
  # end

  def destroy
    Book.delete(params[:id])
    redirect_to books_path
  end


  private

  def book_params
    params.require(:book).permit(:title, :author)
  end
end
