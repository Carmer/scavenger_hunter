class CreateHunts < ActiveRecord::Migration
  def change

    create_table :hunts do |t|
      t.timestamps null: false

      t.integer :user_id
      t.text :master_path, array: true, default: []
      t.string :name
    end
  end
end
