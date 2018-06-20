class User < ApplicationRecord
   has_many :cards
   has_many :sent_invites, class_name: "Relationship", foreign_key: :inviting_id
   has_many :received_invites, class_name: "Relationship", foreign_key: :invited_id

   has_many :invited_users, through: :sent_invites, source: :invited_user
   has_many :inviting_users, through: :received_invites, source: :inviting_user
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def not_expired
     self.cards.where('expire >= ?', Time.now)
  end

  def expired
     self.cards.where('expire < ?', Time.now)
  end

end
