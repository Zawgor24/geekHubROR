class StudentsController < ApplicationController
  before_action :current_student, only: [:show, :edit, :update, :destroy]
  before_action :current_course, only: [:create, :index, :new]
  
  def index
    @students = @course.students.paginate(:page => params[:page], :per_page => 3)
  end

  def new
    @student = Student.new
  end

  def create
    @student = @course.students.create(student_params)

    if @student.save
      redirect_to course_students_path(@course)
    else
      render :new
    end
  end

  def update
    if @student.update(student_params)
      redirect_to @student
    else
      render :edit
    end
  end

  def destroy
    @student.destroy

    redirect_to root_path
  end

  private

  def current_student
    @student = Student.find(params[:id])
  end

  def current_course
    @course = Course.find(params[:course_id])
  end

  def student_params
    params.require(:student).permit(:name, :email, :image, :course_id)
  end
end