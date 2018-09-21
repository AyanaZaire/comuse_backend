class Api::V1::EnrolledController < ApplicationController

  def create
    render json: Enrolled.create(enrolled_params)
  end

  private

  def enrolled_params
    params.permit(:student_id, :section_id)
  end

end
