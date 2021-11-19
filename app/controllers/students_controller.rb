class StudentsController < ApplicationController
  def index
    # storing all the students data 
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.require(:student).permit(:name, :age))
    if @student.valid?
      redirect_to student_path
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find()
  end

  def destroy
  end
end
