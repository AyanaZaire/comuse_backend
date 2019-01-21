class MemberMailer < ApplicationMailer

  default from: 'info@comuse.co'

  def welcome_email(member)
    # @member = params[:member]
    @member = member
    @url = 'http://localhost:3001/login'
    mail(to: @member.email, subject: 'Welcome to Co.muse')
  end

end
