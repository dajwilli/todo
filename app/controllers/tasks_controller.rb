class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task
    else
      render json: @records.errors, status: :unprocessable_entity
    end
  end

private
  def record_params
    params.require(:record).permit(:title, :due_date, :priority)
  end
end
