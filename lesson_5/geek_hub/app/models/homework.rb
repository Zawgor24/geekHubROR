class Homework < ApplicationRecord
  belongs_to :course, dependent: :destroy
  mount_uploader :image, ImageUploader
end
