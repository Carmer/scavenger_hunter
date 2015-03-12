class Hunt < ActiveRecord::Base
  belongs_to :user

  def locations
    Location.find(master_path)
  end
  
end
