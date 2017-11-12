class Course < ApplicationRecord
  has_many :homeworks, dependent: :destroy
  has_and_belongs_to_many :students, dependent: :destroy

  mount_uploader :image, ImageUploader
end
