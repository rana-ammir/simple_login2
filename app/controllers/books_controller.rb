class BooksController < ApplicationController
	before_filter :get_all_books ,only:[:create,:index,:destroy]
  def new
  	@book = Book.new
  end

  def create
  	
  	@book = current_user.books.new(book_param)
  	@book.save
  	# redirect_to books_path
  	#  respond_to do |format|
   #    format.js
   # 	end
  end

  def index
  end

  def destroy
  @book = Book.find(params[:id])
  @book.destroy
 
  # redirect_to books_path
end

private
  def book_param
  
  	params.require(:book).permit(:name,:price)
  end
  def get_all_books
  	@books = Book.all
  end


end
