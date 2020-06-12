class Booking < ApplicationRecord
  has_one :locations
  has_one :user
end
