class Student < ApplicationRecord
  has_many :projects, dependent: :destroy
  has_many :homeworks, through: :course, dependent: :destroy
  has_and_belongs_to_many :courses, dependent: :destroy

  mount_uploader :image, ImageUploader

end
