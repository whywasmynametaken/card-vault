class Card < ApplicationRecord
   scope :expired, -> {where("expire is not null and expire < ?", Date.today)}
   scope :expiring_soon, -> {where("expire is not null and expire >= ? and expire < ?", Date.today, 10.days.from_now.to_date)}
   scope :not_expired, -> { where("expire is null or expire > ?", Date.today) }

   belongs_to :user
   # scope :expired, where(:expire < Time.now)
   # scope :current, where(:expire > Time.now)
end
