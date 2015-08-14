class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
      @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: 'student was successfully created.'
    else
      render :new
    end
  end

  def update
    if @student.update(student_params)
      redirect_to @student, notice: 'student was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path, notice: 'student was successfully destroyd.'
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(
      :name,
      :register_number,
      :status)
  end
  
end
