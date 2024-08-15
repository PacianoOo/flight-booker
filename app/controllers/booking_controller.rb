class BookingController < ApplicationController
    before_action :set_flight
    def new
        @booking = Booking.new
        params[:passenger_count].to_i.times { @booking.passengers.build }
    end

    def create
        @booking = Booking.new(booking_params)
        @booking.user = current_user
    end

    def show
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, :user_id, :passenger_count, :booking_date, passengers_attributes: [:name, :email])
    end

    def set_flight
        @flight = Flight.find(params[:flight_id])
    end
end
