class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = current_user.tasks
  end

  def create
    current_user.tasks.create(task_params)
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
