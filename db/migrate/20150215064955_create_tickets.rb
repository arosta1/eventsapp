class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :booking_id
      t.integer :concert_id
      t.float :price

      t.timestamps
    end
  end
end
