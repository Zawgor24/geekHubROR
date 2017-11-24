class Admin::StudentsController < Admin::ApplicationController
  before_action :current_student, only: %i[show edit update destroy]

  def index
    @students = Student.paginate(page: params[:page], per_page: 10)
  end

  def update
    if @student.update(student_params)
      redirect_to admin_student_path(@student)
    else
      render :edit
    end
  end
  
  def destroy
    @student.destroy

    redirect_to admin_students_path
  end

  private
  def current_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :email, :image)
  end
end