class ChangeWeightDataType < ActiveRecord::Migration[5.2]
  def change
    change_column :breeds, :weight, :string
  end
end
