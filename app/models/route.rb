class Route < ApplicationRecord
  has_many :trains
  has_many :railway_stations_route
  has_many :railway_stations, through: :railway_stations_route

  validates :name, presence: true
end
