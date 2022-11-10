class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  # Important info, You only need to make an instance variable if there
  # is a 'view' associated with the method. Note there are no views for
  # the !instance variables.

  # -- Home --
  def index
    @tasks = Task.all
  end

  # -- Display one --
  def show
    set_task
  end

  # -- Create Task --
  def new
    @task = Task.new
  end

  def create
    task = Task.create(task_params)
    task.save
    # Redircet_to is a line of code that once the page loads it
    # will redirect to another page straight away.
    redirect_to task_path(tasks)
  end

  # -- Edit Task --
  def edit
    set_task
  end

  def update
    set_task
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # -- Delete --
  def destroy
    set_task
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  # We have a private function here that allows only the admin to change
  # specific things in the code and not someone who can change it through
  # the console
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
