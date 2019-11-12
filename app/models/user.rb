class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :email
  validates_presence_of :username
  validate :user_name_length

  def user_name_length
    errors.add(:username, "username should b e less than 10 characters") unless self.username.length < 10
  end
end
