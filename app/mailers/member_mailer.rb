require 'sendgrid-ruby'
include SendGrid

class MemberMailer < ApplicationMailer

  default from: 'comuse@gmail.com'

  # def welcome_email(member)
  #   # getting member from create method in member controller
  #   @member = member
  #   @url = 'https://comuse-backend.herokuapp.com/api/v1/login'
  #   mail(to: @member.email, subject: 'Welcome to Co.muse')
  # end

  def send_task_complete_email
    from = Email.new(email: 'comuse@gmail.com')
    to = Email.new(email: 'ayanazaire@gmail.com')
    subject = 'Sending with SendGrid is Fun'
    content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
    mail = SendGrid::Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
  end

end
