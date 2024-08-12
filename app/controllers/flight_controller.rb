class FlightController < ApplicationController


  def index
    @flight_date = []
    @airports = Airport.pluck(:airport_code)
    @dates = Flight.pluck(:departure_time).sort
    # @dates = Flight.select(:departure_time).distinct.order(:departure_time)
    # .map { |flight| [flight.departure_time.strftime("%m/%d/%Y"), flight.departure_time] }
    @dates.each do |i|
      @flight_date << i.strftime("%m/%d/%Y")
    end
  end
end
