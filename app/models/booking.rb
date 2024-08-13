class Booking < ApplicationRecord
    has_many :passengers, dependent: :destroy
    belongs_to :flight
    belongs_to :user

    accepts_nested_attributes_for :passengers, allow_destroy: true

    validates :passenger_count, presence: true
    validates :flight_id, presence: true
    validates :booking_date, presence: true
end
