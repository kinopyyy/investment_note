class PostsController < ApplicationController
  def index  
    if user_signed_in?
      redirect_to user_path(current_user)        
    else      
    end  
 
  end

  def new
    @post = Post.new
  end

  def create    
    Post.create(post_params)   
    redirect_to user_path(current_user)  
  end 
  
  def edit
    @post = Post.find(params[:id])
  end

  def update  
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to user_path(current_user)  
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to user_path(current_user)    
  end

  private
  def post_params
    params.require(:post).permit(:item, :price, :category,:note,:day).merge(user_id: current_user.id)
  end

end
