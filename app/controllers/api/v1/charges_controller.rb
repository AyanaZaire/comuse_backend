require "stripe"

class Api::V1::ChargesController < ApplicationController

  skip_before_action :authenticate, only: [:new, :create]

  #config/initializers/stripe.rb for to set up configuration
  Stripe.api_key = ENV['STRIPE_TEST_SECRET_KEY']
  # Stripe.api_key = Rails.application.secrets.STRIPE_TEST_SECRET_KEY

  #https://stripe.com/docs/connect/destination-charges
  def create

      card_token = params[:charges][:stripeToken]

      # Amount in cents
      amount = params[:charges][:amount]
      description = params[:charges][:description]
      teacher = params[:charges][:teacher]
      teacher_stripeuid = Member.find(teacher[:id]).stripe_uid
      donation_percentage = params[:charges][:donation_percentage]

      #platform's cut
      # cut = ((amount * 10)/100)
      # percentage = (amount - cut)

      #platform's donation
      platform_donation = ((amount * donation_percentage)/100)
      amount_plus_donation = (amount + platform_donation)
      amount_to_teacher = (amount_plus_donation - platform_donation)
      puts amount
      puts donation_percentage
      puts platform_donation
      puts amount_plus_donation
      puts amount_to_teacher

      # ex: a class is $150 and donation tip is 10%
      # amount = $150 #stripe formats this as 15000
      # donation_percentage = 10% #stripe formats this as 10
      # platform_donation = $15 #stripe formats this as 1500
      # amount_plus_donation = $165 #stripe formats this as 16500
      # amount_to_teacher = $165 - $15 #stripe formats this as 15000
      # comuse takes in the whole $165 and pays out $150 to the teacher using the stripe connect platform

      customer = Stripe::Customer.create(email: current_member.email, card: card_token)

      charge = Stripe::Charge.create({
                  # customer: customer.id,
                  # amount: amount,
                  # description: description,
                  # currency: 'usd',
                  # # :source => card_token,
                  # destination: {
                  #   amount: percentage,
                  #   account: teacher_stripeuid
                  customer: customer.id,
                  amount: amount_plus_donation,
                  description: description,
                  currency: 'usd',
                  # :source => card_token,
                  destination: {
                    amount: amount_to_teacher,
                    account: teacher_stripeuid
                  }
                })
  end

  private

  def charges_params
    params.require(:charges).permit(:stripeToken, :amount, :description, :teacher, :donation_percentage)
  end

end
