# Preview all emails at http://localhost:3000/rails/mailers/employer_mailer
class EmployerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/employer_mailer/welcome_email
  def welcome_email
    EmployerMailer.welcome_email
  end

end
