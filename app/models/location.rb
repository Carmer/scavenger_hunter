class Location < ActiveRecord::Base
  belongs_to :user
  validates  :address, presence: true
  after_save :update_coordinates_from_address

  def update_coordinates_from_address
    lat, long = Geocoder.coordinates(address)
    update_attributes(latitude: lat, longitude: long)
  end

end
