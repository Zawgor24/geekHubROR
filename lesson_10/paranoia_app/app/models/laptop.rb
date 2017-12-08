class Laptop < Ware
  has_one :status

  accepts_nested_attributes_for :status
end
