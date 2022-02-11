class ApplicationController < ActionController::Base
  helper_method :current_employer_can_edit?

  def current_employer_can_edit?(job)
    employer_signed_in? && job.employer == current_employer
  end
end
