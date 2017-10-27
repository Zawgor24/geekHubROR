class Article < ApplicationRecord
  validates :title, :text, presence: true,
                           length: {minimum: 5}
end
