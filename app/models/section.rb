require "stripe"

class Section < ApplicationRecord

  Stripe.api_key = Rails.application.secrets.STRIPE_TEST_SECRET_KEY

  belongs_to :category

  belongs_to :teacher, class_name: 'Member'

  has_many :enrolled

  # has_many :students, class_name: 'Member'
  has_many :students, through: :enrolled, class_name: 'Member'

  # #https://stripe.com/docs/connect/destination-charges
  #
  # def process_payment
  #       #the amount must be in cents
  #       amount = section.price * 100
  #       #this is your cut
  #       percentage = ((amount * 20)/100)
  #       customer = Stripe::Customer.create email: email,
  #                                          card: card_token
  #
  #       charge = Stripe::Charge.create({
  #               :amount => section.price * 100,
  #               :description => section.description,
  #               :currency => 'usd',
  #               :source => "tok_visa",
  #               :destination => {
  #                 :amount => percentage,
  #                 #should this be :teacher, class_name: "Member"?
  #                 :account => section.member.stripe_uid,
  #               }
  #       })
  #  end

end
