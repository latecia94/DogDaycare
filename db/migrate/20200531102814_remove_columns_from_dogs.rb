class RemoveColumnsFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :photo
    remove_column :dogs, :records
    remove_column :dogs, :sub_breed
  end
end
