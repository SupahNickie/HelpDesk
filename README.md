Helpdesk
========

A Mailer app!

"postbin" - makes connection on 127.0.0.1:6969
"ultrahook rails-helpdesk 3000" - supposedly allows Postmark to talk to your app

Pings are handled with the command "heroku addons:open postmark" in the server settings page, then check the rails s terminal logs to see what's up.
