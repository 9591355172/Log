class SendMailMailer < ApplicationMailer
	
	default from: "girmalruby@gmail.com"

  def sample_email
    
    mail(to: "abhijeet428001@gmail.com", subject: 'Sample Email')
    
  end
end
