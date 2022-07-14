class EmployerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.employer_mailer.welcome_email.subject
  #
  def welcome_email
    @greeting = "Hi"
    @employer = Employer.find(1)
    mail to: @employer.email
  end
end
