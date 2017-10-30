class Student < ApplicationRecord
  validates :name, :course, presence: true
  validates :course, numericality: { greater_than: 0, less_than: 6}
end
