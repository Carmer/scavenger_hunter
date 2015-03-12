class Hunt < ActiveRecord::Base
  belongs_to :user
  has_many   :teams

  def locations
    Location.find(master_path)
  end

  def make_teams(number_of_teams)
    number_of_teams.times do |i|
      teams.create(team_number: i,
                  path: generate_team_path)
    end
  end


  private

  def generate_team_path
    Random.rand(1..2) == 1 ? reversed_path = master_path.reverse : reversed_path = master_path
    Random.rand(20).times { reversed_path.rotate! }
    reversed_path
  end
end
