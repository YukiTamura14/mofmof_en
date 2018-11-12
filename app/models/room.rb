class Room < ApplicationRecord
  has_many :stations, inverse_of: :room
  accepts_nested_attributes_for :stations, limit: 2, allow_destroy: true, reject_if: :all_blank

  validates :room_name, presence: true, length: { in: 1..50 }, uniqueness: true
  validates :price, presence: true, length: { in: 1..7 }, numericality: true
  validates :adress, presence: true, length: { in: 1..100 }
  validates :built_years, presence: true, numericality: true, length: { in: 1..4 }
  validates :feature, length: { in: 0..255 }

end
