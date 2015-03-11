class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.timestamps null: false

      t.string :name
      t.text :clue
      t.decimal :latitude
      t.decimal :longitude

    end
  end
end
