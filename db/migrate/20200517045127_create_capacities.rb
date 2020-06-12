class CreateCapacities < ActiveRecord::Migration[5.2]
  def change
    create_table :capacities do |t|
      t.integer :small
      t.integer :medium
      t.integer :large

      t.timestamps
    end
  end
end
