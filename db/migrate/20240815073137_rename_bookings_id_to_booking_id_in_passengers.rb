class RenameBookingsIdToBookingIdInPassengers < ActiveRecord::Migration[7.0]
  def change
      # Rename the column from bookings_id to booking_id
      rename_column :passengers, :bookings_id, :booking_id

      # Rename the index to reflect the new column name
      rename_index :passengers, 'index_passengers_on_bookings_id', 'index_passengers_on_booking_id'
  end
end
