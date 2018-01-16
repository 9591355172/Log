
class HardWorker
  include Sidekiq::Worker

  def perform(mails)
    # Do something
    emails = Array(mails)
    emails.each do |email|
    	SendMailMailer.sample_email(email).deliver!
    	puts "EMAIL"
    	puts email
    end
  end
end