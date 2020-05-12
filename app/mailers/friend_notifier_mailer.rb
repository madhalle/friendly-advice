class FriendNotifierMailer < ApplicationMailer
  def inform(info, friend_email)
    @user = info[:user]
    @message = info[:message]
    @friend = info[:friend]
    mail(to: friend_email, subject: "#{@user.name} is sending you some advice")
  end
end