class Supervisor::CoursesController < ApplicationController
  before_action :find_course, only: [:show, :edit]

  def index

  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new course_params
    if @course.save!
      flash[:success] = t ".create_success"
      redirect_to supervisor_courses_path
    else
      flash[:error] = t ".create_fail"
      render :new
    end
  end

  def show; end

  def edit; end

  private
  def find_course
    @model = Course.find(params[:id]) if params[:id]
  end

  def course_params
    params.require(:course).permit :id, :name, :description, :start_time, :end_time
  end
end
