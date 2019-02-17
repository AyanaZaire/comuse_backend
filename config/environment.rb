# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# In config/environment.rb specify your ActionMailer settings to point to SendGrid's servers.
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  # :domain => 'http://comuse.herokuapp.com/',
  :domain => 'http://localhost:3001/',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
