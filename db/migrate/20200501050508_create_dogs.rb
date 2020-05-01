class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :photo
      t.string :records
      t.string :breed
      t.string :sub_breed

      t.timestamps
    end
  end
end
