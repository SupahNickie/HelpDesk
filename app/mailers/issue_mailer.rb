class IssueMailer < ActionMailer::Base
  default from: "webmaster@rails-helpdesk.herokuapp.com"

  def new_issue_posted(issue)
    @issue = issue

    mail to: "77055d86e722f19b1669f1ccc8e5ce26@inbound.postmarkapp.com", subject: "New Issue Posted"
  end
end
