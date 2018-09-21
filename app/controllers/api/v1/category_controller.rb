class Api::V1::CategoryController < ApplicationController

  def index
    @category = Category.all
    render json: @category
  end
  
end
