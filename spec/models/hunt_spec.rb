require 'rails_helper'

RSpec.describe Hunt, type: :model do
  describe "Locations" do
    it "can find it's locations using the master path" do
      hunt = create(:hunt, master_path: [1, 2, 3])

    end
  end
end
