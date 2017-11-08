class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email
  validates :name, :email, :password, :password_confirmation, presence: true

  belongs_to :flight, foreign_key: true, required: false
  has_one :ticket
end
