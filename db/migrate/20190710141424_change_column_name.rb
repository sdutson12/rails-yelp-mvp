class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :ohone_number, :phone_number
  end
end
