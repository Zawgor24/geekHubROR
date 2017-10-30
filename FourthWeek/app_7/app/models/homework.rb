class Homework < ApplicationRecord
  validates :student, :mark, :subject, presence: true
  validates :mark, numericality: { greater_than: 0, less_than: 13 }
end
