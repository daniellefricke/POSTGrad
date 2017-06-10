class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @school = School.find(params[:school_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @school = School.find(params[:school_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)

    redirect_to school_post_path(@school, @post)
  end

  def show
    @school = School.find(params[:school_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def edit
    @school = School.find(params[:school_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @school = School.find(params[:school_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])

    @comment.update(comment_params)
        redirect_to school_post_comment_path(@school, @post, @comment)
  end

  def destroy
    @school = school.find(params[:school_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    rediret_to school_post_path(@school, @post)
  end
end

private
  def comment_params
    params.require(:comment).permit(:commentor, :text)
  end
