class PostImagesController < ApplicationController
  
  def create
    @post_image = Post.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
  end
  
  private
  
  def post_image_params
    params.require(:post_image).permit(:image)
  end
  
end
