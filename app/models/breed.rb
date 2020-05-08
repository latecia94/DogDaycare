class Breed < ApplicationRecord

  def api
    result = JSON.parse(open("https://api.thedogapi.com/v1/breeds?api_key=d1131aa2-3782-4d20-9f37-").read)
  end

end
