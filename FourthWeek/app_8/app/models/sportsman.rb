class Sportsman < ApplicationRecord
  validates :name, :sport, :rank, presence: true
  validates :rank, numericality: { greater_than: 0 }
end
