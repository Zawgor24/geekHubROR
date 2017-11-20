class City < ApplicationRecord
  has_many :planes, dependent: :destroy
  belongs_to :country

  validates :name, presence: true
end
