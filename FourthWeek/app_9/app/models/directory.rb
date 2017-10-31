class Directory < ApplicationRecord
  validates :name, :address, :phone_number, presence: true
end
