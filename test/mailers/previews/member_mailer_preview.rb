# Preview all emails at http://localhost:3000/rails/mailers/member_mailer
class MemberMailerPreview < ActionMailer::Preview

  def welcome_member_preview
    MemberMailer.welcome_email(Member.last)
  end

end
