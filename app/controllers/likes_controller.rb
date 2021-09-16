class LikesController < ApplicationController
  before_action :set_work, only: [:create, :destroy]

  def create
    @like = Like.create(user_id: current_user.id, work_id: params[:work_id])
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, work_id: params[:work_id])
    @like.destroy
  end

  private
  def set_work
    @work = Work.find(params[:work_id])
  end
end
