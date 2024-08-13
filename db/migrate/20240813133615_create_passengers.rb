class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :email
      t.references :bookings, null: false, foreign_key: true

      t.timestamps
    end
  end
end
