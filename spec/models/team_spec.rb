require 'rails_helper'

RSpec.describe Team, type: :model do
  describe "Paths" do
    it "can find it's current location" do
      team = build(:team, path: [1,2,3,4])
      location = create(:location, id: 1)

      teams_first_path_location = team.current_location

      expect(teams_first_path_location).to eq location
    end
  end
end
