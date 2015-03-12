class Seed

  def initialize
    create_locations
    create_teams
  end

  def create_locations

  end

  def create_teams
    i = 0
    5.times do |t|
      i += 1
      Team.create!(path: [],
                  team_number: i,
                  hunt_id: 1)
    end
    puts 'Teams are created'
  end

end

Seed.new