class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
     # Task.new(name: params[:name], title: params[:title], details: params[:details], completed: params[:completed])
    task.save
    redirect_to task_path(task)
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    # redirect_to task_path(task_params)
    redirect_to task_path(task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
