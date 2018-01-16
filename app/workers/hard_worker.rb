
class HardWorker
  include Sidekiq::Worker

  def perform(mails)
    # Do something
    emails = mails.is_a?(Array) ? mails : [mails]
    emails.each do |email|
    {
    	SendMailMailer.sample_email(email).deliver!
    	puts "EMAIL"
    	puts email
	}
  end
end
end