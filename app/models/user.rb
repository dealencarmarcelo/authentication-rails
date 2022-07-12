class User < ApplicationRecord
  has_secure_password

  attr_accessor :token

  validates_presence_of :first_name,
                        :last_name,
                        :username,
                        :email

  validates :password, length: { minimum: 6 }, presence: true
end
