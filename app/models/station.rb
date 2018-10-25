class Station < ApplicationRecord
  belongs_to :room, inverse_of: :station

  validates :station_name, length: { in: 1..20 }
  validates :line_to_station, length: { in: 1..20 }
  validates :minutes_on_foot, length: { in: 1..2 }, numericality: true

end
