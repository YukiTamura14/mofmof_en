class Station < ApplicationRecord
  FORM = 2
  belongs_to :room, inverse_of: :stations

  validates :station_name, length: { in: 1..20 }
  validates :line_to_station, length: { in: 1..20 }
  validates :minutes_on_foot, length: { in: 1..3 }, numericality: true

end
