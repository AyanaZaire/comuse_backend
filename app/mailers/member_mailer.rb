class MemberMailer < ApplicationMailer

  default from: 'info@comuse.co'

  def welcome_email(member)
    # getting member from create method in member controller
    @member = member
    @url = 'https://comuse-backend.herokuapp.com/api/v1/login'
    mail(to: @member.email, subject: 'Welcome to Co.muse')
  end

end
