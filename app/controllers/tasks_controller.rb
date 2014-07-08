class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = current_user.tasks.not_completed
  end

  def create
    @task = current_user.tasks.new(task_params)
    @tasks = current_user.tasks

    if @task.save
      redirect_to :tasks
    else
      render :index
  end
  end

  def update
    task = Task.find(params[:id])
    task.update_attribute(:completed, true)

    redirect_to :tasks
  end

  private

  def task_params
    params.require(:task).permit(
      :title,
      :body,
    )
  end
end
