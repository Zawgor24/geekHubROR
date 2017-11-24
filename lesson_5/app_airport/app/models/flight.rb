class Flight < ApplicationRecord
  belongs_to :plane
  has_many :tickets, dependent: :destroy

  validates :name, :departure_at, :arrival_at, presence: true

  mount_uploader :image, ImageUploader
end
