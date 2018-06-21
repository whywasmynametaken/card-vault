namespace :expiration do
  desc "Send an email to each user with an expiring card"
  task send_emails: :environment do
    Card.expiring_soon.each do |card|
      ExpireNoticeMailer.with(user: card.user, card: card).expire_notice.deliver_now
    end
  end

end
