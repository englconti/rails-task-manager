class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(params.require(:task).permit(:title, :details))
    task.save

    redirect_to tasks_path # /tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
    # retrive task
    # display form
  end

  def update
    # receive the form submission
    @task = Task.find(params[:id])
    @task.update(params.require(:task).permit(:title, :details, :completed))

    redirect_to task_path(@task) # /restaurants/:id
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end



end
