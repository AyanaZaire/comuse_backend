require "stripe"

class Api::V1::SectionController < ApplicationController

  skip_before_action :authenticate, only: [:index, :create, :update]

  Stripe.api_key = ENV['STRIPE_TEST_SECRET_KEY']

  def index
    render json: Section.all
  end

  def show
    @section = Section.find(params[:id])
    render json: @section
  end

  def create
    # debugger
    @section = Section.create(section_params)
    # @section.photo.attach(params[:photo]) #attaches new photo
    render json: @section
  end

  def update
    @section = Section.find(params[:id])
    @section.photo.purge # purges old photo
    @section.photo.attach(params[:photo]) #attaches new photo
    @section.update(section_params)
    render json: @section, status: :accepted
  end

  def destroy
   render json: Section.find(params[:id]).destroy
  end

  private

  def section_params
    params.permit(:title, :duration, :category_id, :teacher_id, :description, :location, :price, :materials_provided, :materials_to_bring, :faqs, :img_url, :photo)
  end

end
