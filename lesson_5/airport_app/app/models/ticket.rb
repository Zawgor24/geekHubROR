class Ticket < ApplicationRecord
  enum place_type: [:bussines, :econom]
  belongs_to :user
  belongs_to :flight

  validates :place, presence: true
  validates :place, numericality: {greater_than: 0}
  
end
