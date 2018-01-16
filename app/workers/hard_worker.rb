
class HardWorker
  include Sidekiq::Worker

  def perform(mail)
    # Do something
   		@users = User.all
   		@user = @users.where(email: mail)
   		# timing = @user.timings
   		timing_end = @user.timings_end
    	# SendMailMailer.sample_email(mail).deliver_at(timing)
    	SendMailMailer.sample_email(mail).deliver_at(timing_end)
    	puts "EMAIL"
    	puts email
   
  end
end