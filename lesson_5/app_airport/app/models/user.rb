class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :flight, foreign_key: true, required: false, dependent: :delete
  has_many :tickets

  mount_uploader :image, ImageUploader
end
