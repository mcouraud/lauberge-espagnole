class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :flat_id)
  end
end
