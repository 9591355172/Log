
class HardWorker
  include Sidekiq::Worker

  def perform(mail)
    # Do something
   		users = User.all
   		user = users.where(email: mail)
   		timing = user.timings
    	SendMailMailer.sample_email(mail).deliver_at(timing)
    	puts "EMAIL"
    	puts email
   
  end
end