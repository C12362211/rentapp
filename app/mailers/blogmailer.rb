class Blogmailer < ActionMailer::Base
  default from: "lukeedhudson@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blogmailer.register.subject
  #
  def register(customer) 
	if customer
   	   @customer = customer 
           mail(:to => customer.email, :subject => "Welcome to the game rental site")
        end 
  end

end
