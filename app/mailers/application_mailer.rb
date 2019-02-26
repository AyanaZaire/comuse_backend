class ApplicationMailer < ActionMailer::Base
  # default from: 'comuse@gmail.com'
  # default from: 'info@comuse.co'
  default from: "Co.muse <info@comuse.co>"
  layout 'mailer'
end
