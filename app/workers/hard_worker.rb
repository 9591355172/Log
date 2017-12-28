
class HardWorker
  include Sidekiq::Worker

  def perform()
    # Do something
    SendMailMailer.sample_email.deliver!
  end
end