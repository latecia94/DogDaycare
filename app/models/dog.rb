class Dog < ApplicationRecord

  belongs_to :user
  has_many_attached :images
  has_many_attached :records
end
