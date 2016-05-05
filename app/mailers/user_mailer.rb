class UserMailer < ApplicationMailer
	 default from: "from@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'jedmondson.ba@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def newsletter(email)
  end

  def welcome(user)
  @appname = "Bike Shop"
  mail( :to => user.email,
        :subject => "Welcome to #{@appname}!")
end

end
