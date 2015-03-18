class Team < ActiveRecord::Base
  belongs_to :hunt

  def current_location
    Location.find(path.first)
  end

  def check_distance_to_location(lat, long)
    distance = distance_to_location(lat,long)
    distance <= 0.095 ? complete_current_location : false
  end

  def distance_to_location(lat, long)
    Geocoder::Calculations.distance_between([current_location.latitude, current_location.longitude], [lat, long])
  end

  def complete_current_location
    update_attributes(path: path[1..-1])
  end

  def hunt_over?
    path.empty?
  end
end
