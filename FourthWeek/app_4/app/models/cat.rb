class Cat < ApplicationRecord
  validares :name, :age, presence: true
  validates :age, numericality: { greater_than: 0 }
end
