class Room < ApplicationRecord
  has_many :station, inverse_of: :room
  accepts_nested_attributes_for :station

  validates :room_name, presence: true, length: { in: 1..50 }, uniqueness: true
  validates :price, presence: true, length: { in: 1..7 }, numericality: true
  validates :adress, presence: true, length: { in: 1..100 }
  validates :built_years, presence: true, numericality: true

end
