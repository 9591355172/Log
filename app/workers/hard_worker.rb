
class HardWorker
  include Sidekiq::Worker

  def perform(mail)
    # Do something
   		@user = User.where(email: mail).first
   		# timing = @user.timings
   		timing_end = @user.timings_end
    	# SendMailMailer.sample_email(mail).deliver_at(timing)
    	SendMailMailer.sample_email(mail).deliver_at(timing_end)
    	puts "EMAIL"
    	puts email
   
  end
end