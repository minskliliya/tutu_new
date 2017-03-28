class RailwayStation < ApplicationRecord
  has_many :trains, class_name: 'Train', foreign_key: :current_station_id
  has_many :railway_stations_route
  has_many :route, through: :railway_stations_route

  validates :title, presence: true
end
