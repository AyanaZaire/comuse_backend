class Api::V1::SectionController < ApplicationController

  skip_before_action :authenticate, only: [:index]

  def index
    render json: Section.all
  end

  def show
    @section = Section.find(params[:id])
    render json: @section
  end

  def create
    @section = Section.create(section_params)
    render json: @section
  end

  def update
    Section.find(params[:id]).update(section_params)
    render json: Section.find(params[:id])
  end

  def destroy
   render json: Section.find(params[:id]).destroy
  end

  private

  def section_params
    params.require(:section).permit(:title, :duration, :category_id, :teacher_id, :description, :location, :price, :materials_provided, :materials_to_bring, :faqs)
  end

end
