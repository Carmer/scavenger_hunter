class Hunt < ActiveRecord::Base
  belongs_to :user
  has_many   :teams

  def locations
    Location.find(master_path)
  end

end
