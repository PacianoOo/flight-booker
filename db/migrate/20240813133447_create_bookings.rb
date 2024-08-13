class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :flight_id
      t.integer :user_id
      t.integer :passenger_count
      t.date :booking_date

      t.timestamps
    end
  end
end
