class Room < ApplicationRecord
  has_many :station

  validates :room_name, presence: true, length: { in: 1..50 }, uniqueness: true
  validates :price, presence: true, length: { in: 1..4 }, numericality: true
  validates :adress, presence: true, length: { in: 1..100 }
  validates :built_years, presence: true, numericality: true

  # mount_uploader :image, ImageUploader
end
