# require 'rest-client'
# # Using rest-client: 'https://github.com/rest-client/rest-client'
#
# module StripeService
#   class << self
#     RestClient.post(
#       'https://connect.stripe.com/oauth/token',
#       {
#         client_secret: Rails.application.secrets.STRIPE_TEST_SECRET_KEY,
#         code: "{AUTHORIZATION_CODE}",
#         grant_type: authorization_code
#       },
#     )
#   end
# end
