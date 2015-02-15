class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :act_name
      t.string :location
      t.date :start_date
      t.time :start_time
      t.time :end_time
      t.integer :capacity
      t.string :image
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
