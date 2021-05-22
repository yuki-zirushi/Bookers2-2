class UsersController < ApplicationController
  
  def show
    @book = Book.new
    
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/book/#{@book.id}'
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
  
end
