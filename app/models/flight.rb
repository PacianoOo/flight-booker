class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
  has_many :bookings
  def event_date_formatted
    departure_time.strftime("%m/%d/%Y")
  end
end
