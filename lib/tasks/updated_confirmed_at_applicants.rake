task :updated_confirmed_at_applicants => :environment do
  Applicant.all.each do |applicant|
  applicant.update(confirmed_at: DateTime.now)
  end
end
