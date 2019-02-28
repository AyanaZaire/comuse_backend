class Api::V1::AuthController < ApplicationController
  skip_before_action :authenticate, only: [:login]

 def login
   member = Member.find_by(email: params[:email])
   if member && member.authenticate(params[:password])
     token = generate_token(member)

     # img_upload_url = url_for(member.photo)

     # member.as_json(methods: [:photo_attached?, :photo_filename])
     #
     # if member.photo_attached?
     #   binding.pry
     # # else
     # #   puts 'failed'
     # end

     render json: { token: token, member: { id: member.id, email: member.email, name: member.name, stripe_uid: member.stripe_uid } }, status: 200

   else
     # render "Failed" status: 404
   end
 end

end
