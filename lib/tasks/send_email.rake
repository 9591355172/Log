task :send_email, [:email_id] => :environment do |t, args|
  HardWorker.perform_async(args[:email_id])
  
  #UserMailer.send_email(args).deliver_now!
end