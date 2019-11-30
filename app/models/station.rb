class Station < ApplicationRecord
  FORM = 2
  belongs_to :room, inverse_of: :stations
end
