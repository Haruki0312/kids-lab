class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @comments = Comment.all
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      ActionCable.server.broadcast 'comment_channel', content: @comment
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, work_id: params[:work_id])
  end
end
