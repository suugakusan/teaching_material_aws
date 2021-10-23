class Contact < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, length: { maximum: 48 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, length: { maximum: 256 }
  validates :content, presence: true, length: { maximum: 2000 }
  validates :remote_ip, presence: true
end
