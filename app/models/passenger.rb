class Passenger < ApplicationRecord
  belongs_to :bookings

  validates :name, presence: true
  validates :email, presence: true
end
