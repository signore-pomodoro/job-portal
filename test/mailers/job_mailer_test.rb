require "test_helper"

class JobMailerTest < ActionMailer::TestCase
  test "job_created" do
    mail = JobMailer.job_created
    assert_equal "Job created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
