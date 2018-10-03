require 'oauth2'

class Api::V1::MembersController < ApplicationController

  skip_before_action :authenticate, only: [:index, :create, :stripe_callback]

  Stripe.api_key = Rails.application.secrets.STRIPE_TEST_SECRET_KEY

  def index
    @members = Member.all
    render json: @members
  end

  def stripe_callback
    options = {
              site: 'https://connect.stripe.com',
              authorize_url: '/oauth/authorize',
              token_url: '/oauth/token'
            }
            code = params[:code]
            id = params[:state]
            client = OAuth2::Client.new(Rails.application.secrets.STRIPE_TEST_CLIENT_ID, Rails.application.secrets.STRIPE_TEST_SECRET_KEY, options)
            @response = client.auth_code.get_token(code, :params => {:scope => 'read_write'})
            @access_token = @response.token
            @member = Member.find(id)
            @member.update!(stripe_uid: @response.params["stripe_user_id"]) if @response

    redirect_to "http://localhost:3001"
  end

  #this is where a user will be able to see their balance info
   # def payment_profile
   #   @member = Member.find(params[:member][:id])
   #   @stripe_uid =  @member.stripe_uid
   #   @account = Stripe::Account.retrieve(@stripe_uid) if @member.stripe_uid.present?
   #   @balance = Stripe::Balance.retrieve() if @member.stripe_uid.present?
   # end

  def show
    # show the profile
    render json: { id: current_member.id, email: current_member.email, name: current_member.name, img_url: current_member.img_url }
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
    params.permit(:name, :bio, :location, :website, :skill, :email, :password, :img_urls)
  end

end
