class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email

  belongs_to :flight, foreign_key: true, required: false
  has_one :ticket
end
