class Team < ActiveRecord::Base
  belongs_to :hunt

  def current_location
    Location.find(path.first)
  end

  def complete_location
    
  end

end
