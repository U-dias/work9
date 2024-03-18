class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @tasks_count = Task.count
    @tasks_today = Date.today
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.create(task_params)
    if @task.save
       redirect_to controller: :tasks, action: :index
       flash[:notice] = "タスクを作成しました。"
    else
       flash.now[:notice] = "作成に失敗しました"
       render 'new',status: :unprocessable_entity
    end
  end
  def edit
    @task = Task.find(params[:id])
  end
  def show
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    flash[:notice] = "更新しました。"
    redirect_to tasks_path
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path,notice:"削除しました。"
  end

  private
   def task_params
    params.require(:task).permit(:title,:description,:start,:end,:completed,:updated_on)
   end
end
