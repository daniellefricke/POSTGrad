class PostsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @school = School.find(params[:school_id])
    @post = current_user.posts.build
  end

  def create
    @school = School.find(params[:school_id])
    @post = @school.posts.create!(post_params)

    redirect_to school_path(@school, @posts)
  end

  def show
    @school = School.find(params[:school_id])
    @post = Post.find(params[:id])
  end

  def edit
    @school = School.find(params[:school_id])
    @post = Post.find(params[:id])
  end

  def update
    @school = School.find(params[:school_id])
    @post = Post.find(params[:id])

    @post.update(post_params)
        redirect_to school_post_path(@school, @post)
  end

  def destroy
    @school = school.find(params[:school_id])
    @post =  Post.find(params[:id])
    @post.destroy
    rediret_to school_path(@school)
  end
end

private
  def post_params
    params.require(:post).permit(:author, :title, :content)
  end
