class TasksController < ApplicationController

    before_action :find_task, only: [:edit,:update,:show,:destroy]

    def new
      @task = Task.new
    end

    def create
      @task = Task.new(task_params)
      if@task.save
        redirect_to tasks_path
      else
        render :new
      end
    end

    def edit
      find_task
    end

    def give

    end

    def add
      find_task
    end

    def update
      if @task.update(task_params)
        redirect_to task_path
      else
        render :edit
      end
    end

    def destroy
      if @task.destroy
        redirect_to task_path
      else
        redirect_to task_path, error: "Error in delete"
      end
    end

    def index
      @tasks = Task.all
    end

    def show
      @task = Task.find(params[:id])
    end

    def add_task
      @task = Task.find.tasks
    end

    private
    def task_params
      params[:task].permit(:title,:description,:section_id)
    end

    def find_task
      @task = Task.find(params[:id])
    end

end
