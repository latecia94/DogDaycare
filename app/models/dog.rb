class Dog < ApplicationRecord
  has_one :breeds
  belongs_to :user
  has_many_attached :images
  has_many_attached :records

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
