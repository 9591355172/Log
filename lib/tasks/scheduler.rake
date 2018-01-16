desc "This task is called by the Heroku scheduler add-on"
# require File.expand_path(File.dirname(__FILE__) + "/environment")
namespace :scheduler do

		task :send_email => :environment do 
			emails = User.pluck(:email)
			
   			# timing = @user.timings
   			
			emails.each do |mail|
				puts "Updating feed..."
				@user = User.where(email: mail).first
				timing_end = @user.timings_end
  				HardWorker.perform_at(timing_end, mail)
				puts "done."
			end

		end

end

# task :send_reminders => :environment do
#   User.send_reminders
# end