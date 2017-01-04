class PostsController < ApplicationController
  
  def index # This will give us the index page and allow us to see all posts
    @posts = Post.all
  end
  
  def show #CRUD controller action (posts#show) 
    @post = Post.find(params[:id])#Instance variable
  end
  
  def edit
    @post = Post.find(params[:id]) 
  end

  def new
    @post = Post.new
  end
 
  def create
    @post = Post.new(post_params)
   
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
  
  def update
    @post = Post.find(params[:id])
    
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to posts_path
  end

  private
    def post_params # strong parameters
      params.require(:post).permit(:title, :body)
    end 
  
end
