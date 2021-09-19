class WorksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :search_work, only: [:index, :search]
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
    @work = Work.find(params[:id])
    @comment = Comment.new
    @comments = @work.comments.includes(:user)
  end

  def search
    @results = @p.result
  end

  private
  def work_params
    params.require(:work).permit(:image, :title, :material, :theme_id, :product_day_id, :grade_id, :explanation).merge(user_id: current_user.id)
  end

  def search_work
    @p = Work.ransack(params[:q])
  end
end
