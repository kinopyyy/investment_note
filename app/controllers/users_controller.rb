class UsersController < ApplicationController


  # def new
  #   @post = Post.new
  # end

  # def create    
  #   Post.create(post_params)   
  #   redirect_to user_path(current_user)  
  # end 

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @post = Post.new
  end 

  private
  def post_params
    params.require(:post).permit(:item, :price, :category,:note,:day).merge(user_id: current_user.id)
  end

end
