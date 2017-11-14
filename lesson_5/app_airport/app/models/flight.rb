class Flight < ApplicationRecord
  belongs_to :plane, dependent: :delete
  has_many :users
  has_many :tickets

  validates :name, :departure_at, :arrival_at, presence: true

  mount_uploader :image, ImageUploader
end
