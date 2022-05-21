class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(params.require(:task).permit(:title, :start_day, :end_day, :all_day, :schedule_memo))
    if @task.save
      flash[:notice] = "スケジュールを作成しました"
      redirect_to :tasks
    else
      render "new"
    end
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update(params.require(:task).permit(:title, :start_day, :end_day, :all_day, :schedule_memo))
      flash[:notice] = "ユーザーIDが「#{@task.id}」の情報を更新しました"
      redirect_to :tasks
    else
      render "edit"
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :tasks
  end
  
end
