class NotificationMailer < ApplicationMailer
  default from: "no-reply@munchiesapp.com"


  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user

    mail(to: @place_owner.email,
        sucbject: "A Comment has been added to #{@place.name}")
  end
end
