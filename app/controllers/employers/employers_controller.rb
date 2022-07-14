class EmployersController < ApplicationController

def show
end

def create
  user = Employer.find(1)
  EmployersMailer.welcome_email(employer.id).deliver_later
end

end
