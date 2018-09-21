class Api::V1::AuthController < ApplicationController
  skip_before_action :authenticate, only: [:login]

 def login
   member = Member.find_by(email: params[:email])
   if member && member.authenticate(params[:password])
     token = generate_token(member)
     render json: { token: token, member: { id: member.id, email: member.email, name: member.name } }, status: 200
   else
     # render "Failed" status: 404
   end
 end

end
