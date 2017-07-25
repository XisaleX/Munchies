class NotificationMailer < ApplicationMailer
  default from: "no-reply@munchiesapp.com"


  def comment_added
    mail(to: "megasxlr14@gmail.com",
        sucbject: "A Comment has been added to your place")
  end
end
