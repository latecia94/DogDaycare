class AddCapacityToLocation < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :capacities
  end
end
