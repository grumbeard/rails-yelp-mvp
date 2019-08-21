class ChangePhoneNumTypeToString < ActiveRecord::Migration[5.2]
  def up
    change_column :restaurants, :phone_num, :string
  end
end
