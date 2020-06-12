class AddDogCapacityToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :small, :integer
    add_column :locations, :medium, :integer
    add_column :locations, :large, :integer
  end
end
