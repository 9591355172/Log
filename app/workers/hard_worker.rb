
class HardWorker
  include Sidekiq::Worker

  def perform(mails)
    # Do something
   
    	SendMailMailer.sample_email(mails).deliver!
    	puts "EMAIL"
    	puts email
   
  end
end