class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :email
  validates_presence_of :username
  validate :user_name_length

  def user_name_length
    errors.add(:username, "username should b e less than 10 characters") unless self.username.length < 10
  end


  "create 4 validations 1.check email regex, 2.password should contain atleast 1 letter 1 digit and one special character, 3.
   username should be unique 4. password length should be less than 16 "
end
