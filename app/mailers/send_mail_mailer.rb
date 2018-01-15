class SendMailMailer < ApplicationMailer
	
	default from: "girmalruby@gmail.com"

  def sample_email(mail)
    
       mail(to: "abhijeet428001@gmail.com", subject: 'Log System')
    
  end
end
