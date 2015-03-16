class Team < ActiveRecord::Base
  belongs_to :hunt

  def current_location
    Location.find(path.first)
  end
end
