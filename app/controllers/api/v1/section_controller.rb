class Api::V1::SectionController < ApplicationController

  skip_before_action :authenticate, only: [:index, :process_payment]

  def index
    render json: Section.all
  end

  #https://stripe.com/docs/connect/destination-charges

  def process_payment
    debugger
        #the amount must be in cents
        amount = section.price * 100
        #this is your cut
        percentage = ((amount * 20)/100)
        customer = Stripe::Customer.create email: email,
                                           card: card_token

        charge = Stripe::Charge.create({
                :amount => section.price * 100,
                :description => section.description,
                :currency => 'usd',
                :source => "tok_visa",
                :destination => {
                  :amount => percentage,
                  #should this be :teacher, class_name: "Member"?
                  :account => section.member.stripe_uid,
                }
        })
   end

  def show
    @section = Section.find(params[:id])
    render json: @section
  end

  def create
    # debugger
    @section = Section.create(section_params)
    render json: @section
  end

  def update
    Section.find(params[:id]).update(section_params)
    render json: Section.find(params[:id])
  end

  def destroy
   render json: Section.find(params[:id]).destroy
  end

  private

  def section_params
    params.require(:section).permit(:title, :duration, :category_id, :teacher_id, :description, :location, :price, :materials_provided, :materials_to_bring, :faqs, :img_url)
  end

end
