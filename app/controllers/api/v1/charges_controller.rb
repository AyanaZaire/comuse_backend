require "stripe"

class Api::V1::ChargesController < ApplicationController

  skip_before_action :authenticate, only: [:new, :create]

  #config/initializers/stripe.rb for to set up configuration
  # Stripe.api_key = ENV['STRIPE_TEST_SECRET_KEY']
  Stripe.api_key = Rails.application.secrets.STRIPE_TEST_SECRET_KEY

  #https://stripe.com/docs/connect/destination-charges
  def create

      card_token = params[:charges][:stripeToken]

      # Amount in cents
      amount = params[:charges][:amount]
      description = params[:charges][:description]
      teacher = params[:charges][:teacher]
      teacher_stripeuid = Member.find(teacher[:id]).stripe_uid
      donation = params[:charges][:donation]
      puts donation
      #platform's cut
      cut = ((amount * 10)/100)
      percentage = (amount - cut)

      customer = Stripe::Customer.create(email: current_member.email, card: card_token)

      charge = Stripe::Charge.create({
                  customer: customer.id,
                  amount: amount,
                  description: description,
                  currency: 'usd',
                  # :source => card_token,
                  destination: {
                    amount: percentage,
                    account: teacher_stripeuid
                  }
                })
  end

  private

  def charges_params
    params.require(:charges).permit(:stripeToken, :amount, :description, :teacher, :donation)
  end

end
