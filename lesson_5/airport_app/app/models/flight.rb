class Flight < ApplicationRecord
  belongs_to :city
  belongs_to :plane
  has_many :users
  has_many :tickets
end
