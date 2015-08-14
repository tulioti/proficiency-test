class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

  def index
  	@students_count = Student.count
    @courses_count = Course.count
    @classrooms = Classroom.all
  end

  def show
  end

  def new
    @classroom = Classroom.new
  end

  def edit
  end

  def create
    @classroom = Classroom.new(classroom_params)
    @classroom.entry_at = Time.now
    if @classroom.save
      redirect_to classrooms_path, notice: 'classroom was successfully created.'
    else
      render :new
    end
  end

  def update
    if @classroom.update(classroom_params)
      redirect_to @classroom, notice: 'classroom was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @classroom.destroy
    redirect_to classrooms_path, notice: 'classroom was successfully destroyd.'
  end

  private
  def set_classroom
    @classroom = Classroom.find(params[:id])
  end

  def classroom_params
    params.require(:classroom).permit(
      :student_id,
      :course_id)
  end
end
