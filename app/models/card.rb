class Card < ApplicationRecord
   scope :expired, -> {where("expire is not null and expire < ?", Date.today)}
   scope :expiring_soon, -> {where("expire is not null and expire >= ? and expire < ?", Date.today, 10.days.from_now.to_date)}

   belongs_to :user
end
