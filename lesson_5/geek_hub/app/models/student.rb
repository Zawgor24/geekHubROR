class Student < ApplicationRecord
  has_many :projects
  has_many :homeworks, through: :course
  has_and_belongs_to_many :courses

end
