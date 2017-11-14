class Plane < ApplicationRecord
  has_many :flights
  belongs_to :city, dependent: :delete

  validates :name, :places, presence: true

  mount_uploader :image, ImageUploader
end
