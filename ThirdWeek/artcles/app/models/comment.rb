class Comment < ApplicationRecord
  belongs_to :article
  validates :commenter, :body, presence: true,
                    length: { minimum: 5 }
end
