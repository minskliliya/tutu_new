class RailwayStationsRoute < ApplicationRecord
  belongs_to :railway_station
  belongs_to :routes
end
