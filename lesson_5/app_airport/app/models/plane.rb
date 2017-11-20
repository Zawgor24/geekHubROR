class Plane < ApplicationRecord
  has_many :flights, dependent: :destroy
  belongs_to :city

  validates :name, :places, presence: true

  mount_uploader :image, ImageUploader
end
