class CreateTripEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_events do |t|
      t.string :eventname
      t.datetime :eventtime
      t.string :location
      t.text :journal
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
