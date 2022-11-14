class JobMailer < ApplicationMailer

  default from: "test@test.com"

  def job_created
    @greeting = "Hi"

    mail(
      to: Job.last.employer.email, 
      subject: "New job added"
    )  
  end
end
