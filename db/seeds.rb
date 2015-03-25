class Seed
  attr_reader :user, :hunt

  def initialize
    create_user
    create_locations
    create_hunt
    create_teams
    assign_locations_to_user
    assign_hunt_to_user
    assign_teams_to_hunt
  end

  def create_user
    @user = User.create(email: "test_user@example.com", password: "password")

    puts "User created with the email 'test_user@example.com' and the password 'password'."
  end

  def create_locations
    Location.create!(
      name: "My Brother's Bar",
      clue: "It's a famous bar. Owned by my brother.",
      address: '2376 15th St, Denver, CO',
      latitude: 39.756197,
      longitude: -105.009299
    )

    Location.create!(
      name: "The Big Blue Bear",
      clue: "It's a bear. It's blue. It's big.",
      address: "700 14th St, Denver, CO",
      latitude: 39.7439769,
      longitude: -104.9954394
    )

    Location.create!(
      name: "Denver Art Museum",
      clue: "It's a museum. It's got art. It's in Denver.",
      address: "100 W 14th Avenue pkwy, Denver, CO",
      latitude: 39.737188,
      longitude: -104.989345
    )

    Location.create!(
      name: "Denver Capitol Building",
      clue: "It's a building. It's capitol. It's in Denver.",
      address: "200 East Colfax Ave, Denver CO",
      latitude: 39.739325,
      longitude: -104.984807
    )

    puts "Locations created!"
  end

  def create_hunt
    @hunt = Hunt.create!(
      user_id: user,
      master_path: [1, 2, 3, 4],
      name: "The coolest hunt ever!"
    )

    puts "Hunt created and assigned to user!"
  end

  def create_teams
    path = [1, 2, 3, 4]
    5.times do |i|
      Team.create!(
        path: path.shuffle,
        team_number: i,
        hunt_id: hunt
      )
    end
    puts 'Teams created!'
  end

  def assign_locations_to_user
    Location.all.each do |location|
      user.locations << location
    end

    puts "Locations assigned to user test_user@example.com!"
  end

  def assign_hunt_to_user
    user.hunts << hunt
  end

  def assign_teams_to_hunt
    Team.all.each do |team|
      hunt.teams << team
    end
  end
end

Seed.new

