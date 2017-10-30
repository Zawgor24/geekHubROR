class HomeworksController < ApplicationController
  before_action :current_homework, only: [:show, :edit, :update, :destroy]

  def index
    @homeworks = Homework.all
  end

  def new
    @homework = Homework.new
  end

  def create
    @homework = Homework.new(homework_params)

    if @homework.save
      redirect_to @homework
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
    redirect_to homeworks_path
  end

  private

  def current_homework
    @homework = Homework.find(params[:id])
  end

  def homework_params
    params.require(:homework).permit(:student, :mark, :subject, :mistake)
  end

end