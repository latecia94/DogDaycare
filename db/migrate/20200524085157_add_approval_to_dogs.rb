class AddApprovalToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :approved, :boolean, default: :false
  end
end
