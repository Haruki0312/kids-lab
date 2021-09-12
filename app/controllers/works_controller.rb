class WorksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @works = Work.order("created_at DESC").first(3)
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private
  def work_params
    params.require(:work).permit(:image, :title, :material, :theme_id, :product_day_id, :grade_id, :explanation).merge(user_id: current_user.id)
  end
end
