class AddLocationAndDogToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :dogs
    add_reference :bookings, :locations
  end
end
