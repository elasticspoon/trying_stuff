class UserMailer < ApplicationMailer
  default from: 'some_email@example.com'
  # layout 'user_mailer'

  def welcome_email
    @user = params[:user]
    @url = 'http://example.com/login'
    headers({ some: 123, values: 2344 })
    attachments['some-file.md'] = File.read('README.md')
    mail(to: @user.email, subject: 'Welcome to my site') do |format|
      format.html { render layout: 'mailer-alt' }
    end
  end
end
