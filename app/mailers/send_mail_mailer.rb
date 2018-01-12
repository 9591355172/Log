class SendMailMailer < ApplicationMailer
	
	default from: "girmalruby@gmail.com"

  def sample_email(mail)
    
       mail(to: mail, subject: 'Welcome')
    
  end
end
