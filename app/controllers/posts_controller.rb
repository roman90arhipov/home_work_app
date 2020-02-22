class PostsController < ApplicationController

  def index
    @posts = Post.visible
  end

  def show
    @post = Post.find(params[:id])
    @likes = Like.where(post_id: @post.id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post.id)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
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

  def add_like
    Like.create(post_id: params[:post_id])
    post = Post.where(id: params[:post_id]).first
    post.update(likes_count: post.likes_count + 1)
    redirect_to post_path(post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :is_hidden)
  end

end