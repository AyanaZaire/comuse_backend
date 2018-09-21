class Api::V1::CourseController < ApplicationController

  def index
    render json: Course.all
  end

  def show
    @course = Course.find(params[:id])
    render json: @course
  end

  def create
    @course = Course.create(course_params)
    render json: @course
  end

  def update
    Course.find(params[:id]).update(course_params)
    render json: Course.find(params[:id])
  end

  def destroy
   render json: Course.find(params[:id]).destroy
  end

  private

  def course_params
    params.require(:course).permit(:date, :time)
  end

end
