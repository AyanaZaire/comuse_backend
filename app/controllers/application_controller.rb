class ApplicationController < ActionController::API

  before_action :authenticate

  # toggle api keys and urls in charges, members controller, and storage.yml

  private
  def authenticate
    token = request.headers['Authorization'].split(' ')[1]
    decoded_payload = decode_token(token)
    @current_member = Member.find(decoded_payload['member_id'])
  rescue JWT::VerificationError
    render json: { success: false }, status: 401
  end

  def current_member
    @current_member ||= authenticate
  end

 # should not end up in actual application!!!
 # pretend key
  def hmac_secret
    'super_secret'
  end

  def generate_token(member)
    payload = { member_id: member.id }
    JWT.encode payload, hmac_secret, 'HS256'
  end

  def decode_token(token)
    decoded = JWT.decode token, hmac_secret, true, { algorithm: 'HS256' }
    decoded[0]
  end

end
