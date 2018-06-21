class ApplicationMailer < ActionMailer::Base
  default from: ENV['EMAIL_USERNAME'] || 'card.vault.development@fake.com'
  layout 'mailer'
end
