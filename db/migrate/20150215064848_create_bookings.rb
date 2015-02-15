class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.float :cost
      t.string :credit_card_type
      t.string :credit_card_number

      t.timestamps
    end
  end
end
