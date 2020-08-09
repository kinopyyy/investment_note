class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @post = Post.new
    @chart = [['消費', 10], ['浪費', 20],['投資',30]]
   
  end 

  private
  def post_params
    params.require(:post).permit(:item, :price, :category,:note,:day).merge(user_id: current_user.id)
  end

end
