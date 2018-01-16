
class HardWorker
  include Sidekiq::Worker

  def perform(mail)
    # Do something
   		
    	# SendMailMailer.sample_email(mail).deliver!
    	SendMailMailer.sample_email(mail).deliver!
    	puts "EMAIL"
    	puts mail
   
  end
end