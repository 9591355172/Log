desc "This task is called by the Heroku scheduler add-on"
task :send_email, [:email_id] => :environment do |t, args|
  

  HardWorker.perform_async()
  # SendMailMailer.sample_email(args).deliver_now!
  puts "Updating feed..."
  
  puts "done."
end

# task :send_reminders => :environment do
#   User.send_reminders
# end