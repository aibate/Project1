class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def index
    @comments = Comment.all
  end

  def edit
    @comment = Comment.find params[:id]
  end

  def create
    comment = Comment.create comment_params
    comment_params
    redirect_to comment
  end

  def updated
    comment = Coment.find params[:id]
    comment = Comment.update comment_params
    redirect_to comment
  end


  def show
    @comment =Comment.find params[:id]
  end



  private
  def comment_params
    params.require(:params).permit(:content, :date, :like, :location_id, :user_id)
  end


end
