class PostsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @school = School.find(params[:school_id])
    @post = Post.new
  end

  def create
    @school = School.find(params[:school_id])
    @post = @school.posts.create!(post_params.merge(user: current_user))

    redirect_to school_path(@school, @posts), notice: "Your post was created!"

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
        if @post.user == current_user
          @post.update(post_params)

        else
          flash[:alert] = "Only the author of the post can edit/delete"
        end
        redirect_to school_post_path(@school, @post), notice: "Your post was updated!"
  end

  def destroy
    @school = School.find(params[:school_id])
    @post =  Post.find(params[:id])
    if @post.user == current_user
       @post.destroy
       flash[:alert] = "You post was deleted successfully!"
    else
      flash[:alert] = "Only the author of this post can delete."
    end
    redirect_to school_path(@school)
  end
end

private
  def post_params
    params.require(:post).permit(:author, :title, :content)
  end
