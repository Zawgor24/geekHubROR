class CoursesController < ApplicationController
  before_action :current_course, only: %i[show edit update destroy]

  def index
    @courses = Course.paginate(:page => params[:page], :per_page => 4)
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)

    if @course.save
      redirect_to @course
    else
      render :new
    end
  end

  def update
    if @course.update(course_params)
      redirect_to @course
    else
      render :edit
    end
  end

  def destroy
    @course.destroy

    redirect_to courses_path
  end

  private

  def current_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :image)
  end
end