class ProjectsController < ApplicationController
  before_action :current_project, only: [:show, :edit, :update, :destroy]
  before_action :current_student, only: [:create, :index, :new]
  def index
    @projects = @student.projects.paginate(:page => params[:page], :per_page => 3)
  end

  def new
    @project = Project.new
  end

  def create
    @project = @student.projects.create(project_params)

    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project
    else
      render :edit
    end
  end

  def destroy
    @project.destroy

    redirect_to students_projects_path
  end

  private

  def current_project
    @project = Project.find(params[:id])
  end

  def current_student
    @student = Student.find(params[:student_id])
  end

  def project_params
    params.require(:project).permit(:name, :task, :deadline, :student_id)
  end
end
