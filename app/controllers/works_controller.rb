class WorksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      @work = Work.new(work_params)
      render :new
    end
  end

  def show
  end

  private
  def work_params
    params.require(:work).permit(:image, :title, :material, :theme_id, :days_id, :grade_id, :explanation).merge(user_id: current_user.id)
  end
end
