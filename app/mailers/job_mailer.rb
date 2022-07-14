class JobMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.job_mailer.job_created.subject
  #
  def job_created
    @greeting = "Hi"

    mail(
      to: Employer.last.email, 
      subject: "New job added"
    )  
  end
end
