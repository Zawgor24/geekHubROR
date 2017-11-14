class City < ApplicationRecord
  has_many :planes
  belongs_to :country

  validates :name, presence: true
end
