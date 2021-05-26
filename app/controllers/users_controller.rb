class UsersController < ApplicationController
  
  def index
    @user = current_user
    @users = User.all
    @book_new = Book.new
    @books = @user.books
  end
  
  def show
    @user = User.find(params[:id])
    @book_new = Book.new
    @books = @user.books
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    if user.update(user_params)
      flash[:notice] = "You have updated user successfully."
    end
    redirect_to user_path(user.id)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
  
end
