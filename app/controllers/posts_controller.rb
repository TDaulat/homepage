class PostsController < ApplicationController
  respond_to :html

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    if @post = Post.create(params[:post])

    else

    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])

    else

    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy

    else

    end
  end
end