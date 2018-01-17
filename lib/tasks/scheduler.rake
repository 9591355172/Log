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
				d = Date.today
				t_end_utc = timing_end
				t_start_utc = @user.timings
				t_start_utc = t_start_utc.in_time_zone('Asia/Kolkata')
				t_end_itc = t_end_utc.in_time_zone('Asia/Kolkata')
				t_start_itc -= t_start_itc.utc_offset
				t_end_itc -= t_end_itc.utc_offset
				dt_end = DateTime.new(d.year, d.month, d.day, t_end_itc.hour, t_end_itc.min, t_end_itc.sec, t_end_itc.zone)
				dt_start = DateTime.new(d.year, d.month, d.day, t_start_itc.hour, t_start_itc.min, t_start_itc.sec, t_start_itc.zone)
  				SendMailMailer.sample_email(mail).deliver_later(wait_until: dt_end)
  				SendMailMailer.sample_email(mail).deliver_later(wait_until: dt_start)
				puts "done."
			end

		end

end

# task :send_reminders => :environment do
#   User.send_reminders
# end