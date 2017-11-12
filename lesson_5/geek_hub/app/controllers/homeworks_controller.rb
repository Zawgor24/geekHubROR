class HomeworksController < ApplicationController 
  before_action :current_homework, only: [:show, :edit, :update, :destroy]
  before_action :current_course, only: [:create, :index, :new]  
  def index
    @homeworks = @course.homeworks.paginate(:page => params[:page], :per_page => 3)
  end

  def new
    @homework = Homework.new
  end

  def create
    @homework = @course.homeworks.create(homework_params)

    if @homework.save
      redirect_to course_homeworks_path(@course)
    else
      render :new
    end
  end

  def update
    if @homework.update(homework_params)
      redirect_to @homework
    else
      render :edit
    end
  end

  def destroy
    @homework.destroy

    redirect_to course_homeworks_path
  end

  private

  def current_homework
    @homework = Homework.find(params[:id])
  end

  def current_course
    @course = Course.find(params[:course_id])
  end

  def homework_params
    params.require(:homework).permit(:name, :task, :deadline, :course_id)
  end
end
