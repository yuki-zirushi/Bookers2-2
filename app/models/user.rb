class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :books, dependent: :destroy
  
  attachment :image
  def show
    @user = User.find(params[:id])
  end
  
end
