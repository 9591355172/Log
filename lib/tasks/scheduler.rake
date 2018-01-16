desc "This task is called by the Heroku scheduler add-on"
# require File.expand_path(File.dirname(__FILE__) + "/environment")
namespace :scheduler do

		task :send_email => :environment do 
			emails = User.pluck(:email_id)
  			HardWorker.perform_async(emails)
			puts "Updating feed..."
			puts "done."
end

end

# task :send_reminders => :environment do
#   User.send_reminders
# end