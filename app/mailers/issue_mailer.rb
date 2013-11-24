class IssueMailer < ActionMailer::Base
  default from: ENV['SENDER_SIGNATURE']

  def new_issue_posted(issue)
    @issue = issue

    mail to: ENV['EMAIL_ADDRESS'], subject: "New Issue Posted"
  end
end
