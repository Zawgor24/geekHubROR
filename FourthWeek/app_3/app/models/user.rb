class User < ApplicationRecord
  validates :name, :age, presence: true
  validates :age, numericality: { greater_than: 0 }
end
