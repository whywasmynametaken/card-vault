class ExpireNoticeMailer < ApplicationMailer
  default from: 'cardvaultadmin@cvault.com'
  def expire_notice
    @card = params[:card]
    @user = params[:user]
    mail(to: @user.email, subject: 'You have a card that is expiring soon!')
  end
end
