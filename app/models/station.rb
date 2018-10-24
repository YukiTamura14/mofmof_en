class Station < ApplicationRecord
  belongs_to :room

  validates :station_name, presence: true, length: { in: 1..20 }
  validates :line_to_station, presence: true, length: { in: 1..20 }
  validates :minutes_on_foot, presence: true, length: { in: 1..2 }, numericality: true

end
