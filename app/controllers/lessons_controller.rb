class LessonsController < ApplicationController  
  def index
    @schedules = Schedule.all
  end
  
  def create
    @schedule = Schedule.new(post_params)
    if @schedule.save
      flash[:success] = "スケジュールを新規登録しました。"
      redirect_to lessons_path
    else
      flash.now[:failure] = "スケジュールを新規登録できませんでした。"
      render "new", status: :unprocessable_entity
    end
  end

  def new
    @schedule = Schedule.new
  end
  
  def edit
    @schedule = Schedule.find(params[:id])
  end
  
  def show
    @schedule = Schedule.find(params[:id])
  end
  
  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(post_params)
      flash[:success] = "スケジュールを更新しました。"
      redirect_to lesson_path
    else
      flash.now[:failure] = "スケジュールを更新できませんでした。"
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:success] = "スケジュールを削除しました。"
    redirect_to lessons_path
  end
    
  private
  def post_params
    params.require(:schedule).permit(
      :title,
      :start_day,
      :end_day,
      :all_day,
      :memo
    )
  end
end
