class Project < ApplicationRecord
  belongs_to :student, dependent: :destroy
  mount_uploader :image, ImageUploader
end
