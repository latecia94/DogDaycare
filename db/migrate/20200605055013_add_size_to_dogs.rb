class AddSizeToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :size, :string
  end
end
