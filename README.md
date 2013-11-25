Helpdesk
========

A Mailer app! Go to 'rails-helpdesk.herokuapp.com' to post an issue!

![Screencap](/public/images/screenshot1.png "Screencap of Issues Listing on Heroku")

When you do, the issues_mailer has been set up to send my email a notification about the new issue as well as the contents of your message!

![Screencap](/public/images/screenshot2.png "Screencap of Email View")

Now, I can respond to any tech crisis from the comfort of my inbox without ever booting up my Rails app, AND it'll show up on the Answers page! Nifty!

![Screencap](/public/images/screenshot3.png "Screencap of Answer Appearing on Heroku")

Some important things to note: I have to have two servers running on my computer locally or wherever the Rails app is hosted.

"postbin" - makes connection on 127.0.0.1:6969
"ultrahook rails-helpdesk 3000" - locally allows Postmark to talk to your app.
"ultrahook rails-helpdesk rails-helpdesk.herokuapp.com" - allows Postmark to talk to the app in production on Heroku.

Pings are handled with the command "heroku addons:open postmark" in the server settings page, then I can check the rails s terminal logs to see what's up.
