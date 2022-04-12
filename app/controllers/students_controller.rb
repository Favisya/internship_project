class StudentsController < ApplicationController


  before_action :find_student, only: [:edit,:update,:show,:destroy]
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if@student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def edit
    find_student
  end

  def update
    if @student.update(student_params)
      redirect_to student_path
    else
      render :edit
    end
  end

  def Alltask
    @task = Task.all
  end

  def conTask

  end

  def addTask
    find_student
  end

  def destroy
    if @student.destroy
      redirect_to student_path
    else
      redirect_to student_path, error: "Error in delete"
    end
  end


  def index
    @students = Student.all
  end

  def show
  end



  private
  def student_params
    params[:student].permit(:first_name,:last_name,:email)
  end

  def find_student
    @student = Student.find(params[:id])
  end


end
