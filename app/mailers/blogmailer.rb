class Blogmailer < ActionMailer::Base
  default from: "me@sandboxbe9d4196da074bee8665de277e97d4da.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blogmailer.register.subject
  #
  def register(user) 
	if user
   	   @user = user 
           mail(:to => user.email, :subject => "Ticket Central")
        end 
 end
end
