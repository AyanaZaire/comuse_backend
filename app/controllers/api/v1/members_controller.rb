class Api::V1::MembersController < ApplicationController

  skip_before_action :authenticate, only: [:index, :create]

  def index
    @members = Member.all
    render json: @members
  end

  # def show
  #   @member = Member.find(params[:id])
  # end

  def show
    # show the profile
    render json: { id: current_member.id, email: current_member.email, name: current_member.name }
  end

  def create
    @member = Member.create(member_params)
    if @member.valid?
      render json: { member: MemberSerializer.new(@member) }, status: :created
    else
      render json: { error: 'failed to create member' }, status: :not_acceptable
    end
  end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
    # render json: Member.find(params[:id])
    if @member.save
      render json: @member, status: :accepted
    else
      render json: { errors: @member.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    render json: Member.find(params[:id]).destroy
  end

  private

  def member_params
    params.permit(:name, :bio, :location, :website, :skill, :email, :password)
  end

end
