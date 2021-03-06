# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end
require File.expand_path(File.dirname(__FILE__) + "/environment")
# Learn more: http://github.com/javan/whenever


usr =User.all

usr.each do |user|

	every :day, :at => user.timings do 
		rake "send_email[#{user.email}]"
	end
	every :day, :at => user.timings_end do
		rake "send_email[#{user.email}]"
	end
end
# every :day, :at => "2:34 pm" do
# 	rake "save_unfinished_task", :environment => "development"
# end