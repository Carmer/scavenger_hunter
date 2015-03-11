class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.timestamps null: false

      t.text :path, array: true, default: []
      t.integer :team_number
      t.integer :hunt_id
    end
  end
end
