class UsersController < ApplicationController
  
  def show
    @book = Book.new
    
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/book/#{@book.id}'
  end
  
end
