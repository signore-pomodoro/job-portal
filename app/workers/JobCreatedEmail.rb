class JobCreatedEmail
  include Sidekiq::Worker
  sidekiq_options retry: false


  def perform
  JobMailer.job_created.deliver_later(wait: 1.minutes)
  end 
end
