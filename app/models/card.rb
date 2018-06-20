class Card < ApplicationRecord
   belongs_to :user
   # scope :expired, where(:expire < Time.now)
   # scope :current, where(:expire > Time.now)
end
