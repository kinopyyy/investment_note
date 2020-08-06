class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).all.order("day DESC")
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create    
    Post.create(post_params)   
    redirect_to root_path  
  end 
  
  def show
    @post = Post.find(params[:id])

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to root_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path     
  end

  private
  def post_params
    params.require(:post).permit(:item, :price, :category,:note,:day).merge(user_id: current_user.id)
  end

end
