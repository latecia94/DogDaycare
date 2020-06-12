class Breed < ApplicationRecord
  belongs_to :dogs

  def api
    require 'open-uri'
    require 'json'

    result = JSON.parse(open("https://api.thedogapi.com/v1/breeds?api_key=d1131aa2-3782-4d20-9f37-").read)

    result.each do |key|
      breed = Breed.new
      breed.name = "#{key['name']}"
      breed.weight = "#{key['weight']['metric']}"
      breed.save
    end
  end

  def average_weight
    Breed.all.each do |breed|
      one = breed.weight.split(' - ')[0]
      two = breed.weight.split(' - ')[1]
      avg = (one.to_i + two.to_i) / 2
    end

    Dog.all.each do |dog|
      dog.update_all(size: "small") if avg === (1..10)
      dog.update_all(size: "medium") if avg === (11..40)
      dog.update_all(size: "large") if avg === (41..150)
      dog.save
    end
  end
end
