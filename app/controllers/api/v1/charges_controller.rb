require "stripe"

class Api::V1::ChargesController < ApplicationController

  skip_before_action :authenticate, only: [:index, :create]

  Stripe.api_key = "sk_test_vHtZZjoJQelgCTGZbnTUxDHM"

  # def index
  #   render json: Stripe::Charge.all
  # end

  def new
  end

  def create
    # Amount in cents
    # @amount = 500
    #
    # customer = Stripe::Customer.create(
    #   :email => params[:stripeEmail],
    #   :source  => params[:stripeToken]
    # )

    charge = Stripe::Charge.create({
          amount: 999,
          currency: 'usd',
          source: 'tok_visa',
          receipt_email: 'jenny.rosen@example.com',
      })

  # rescue Stripe::CardError => e
  #   flash[:error] = e.message
  #   redirect_to new_charge_path
  end

end
