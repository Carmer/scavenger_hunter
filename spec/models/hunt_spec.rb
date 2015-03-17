require 'rails_helper'

RSpec.describe Hunt, type: :model do
  describe "Locations" do
    it "can find it's locations" do
      create(:location, id: 1)
      create(:location, id: 2)
      test_location = create(:location, id: 3, name: "Trevor's Bar")

      hunt = create(:hunt, master_path: [1, 2, 3])

      expect(hunt.locations.last.name).to eq("Trevor's Bar")
    end
  end

  describe "Teams" do
    it "can create a specified number of teams" do
      hunt = create(:hunt, master_path: [1, 2, 3])

      hunt.make_teams 3

      expect(Team.count).to eq 3
    end
  end
end
