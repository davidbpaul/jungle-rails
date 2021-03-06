class User < ActiveRecord::Base
  has_many :reviews
  has_secure_password
  validates :password, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :first_name, presence: true
  validates :last_name, presence: true
end
