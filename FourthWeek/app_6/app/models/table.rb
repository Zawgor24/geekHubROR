class Table < ApplicationRecord
  validates :color, :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
