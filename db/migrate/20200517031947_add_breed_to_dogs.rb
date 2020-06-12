class AddBreedToDogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogs, :breeds
  end
end
