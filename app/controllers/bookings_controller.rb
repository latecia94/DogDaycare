class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.save!
    redirect_to dogs_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:date, :dogs_id, :locations_id)
  end


end
