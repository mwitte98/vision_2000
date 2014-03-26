class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name,     presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,    presence: true, format: { with: VALID_EMAIL_REGEX },
                       uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validate :certain_email

  def certain_email
  	unless (email.downcase == "dwitte1@rochester.rr.com") || (email.downcase == "mcw9612@rit.edu")
  	  errors.add(:email, "doesn't have permission to sign up for this site")
  	end
  end
end
