class Api::V1::CategoryController < ApplicationController

  skip_before_action :authenticate, only: [:index]

  def index
    @category = Category.all
    render json: @category
  end

end
