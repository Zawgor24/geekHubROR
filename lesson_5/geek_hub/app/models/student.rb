class Student < ApplicationRecord
  has_and_belongs_to_many :courses, dependent: :destroy
  has_many :projects
  has_many :homeworks, through: :courses
  
  mount_uploader :image, ImageUploader
end
