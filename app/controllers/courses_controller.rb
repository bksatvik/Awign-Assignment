class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def show
    @course = Course.find(params[:id])
    # @courses = @student.courses
    # @enrollments = @student.enrollments
  end

  def create
    course_params = params.require(:course).permit(:name)
    @course = Course.create(course_params)
    redirect_to courses_path
  end

  def destroy
    course = Course.find(params[:id])
    course.destroy
    redirect_to courses_path
  end

end
