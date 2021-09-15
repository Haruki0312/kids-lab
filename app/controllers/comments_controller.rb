class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @comment = Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, work_id: params[:work_id])
  end
end
