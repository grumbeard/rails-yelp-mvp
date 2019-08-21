class ChangePhoneNumToPhoneNumber < ActiveRecord::Migration[5.2]
  def change
    # change_table :restaurants do |t|
    #   t.string :name
    #   t.string :address
    #   t.rename :phone_num, :phone_number
    #   t.string :category

    #   t.timestamps
    # end
    rename_column :restaurants, :phone_num, :phone_number
  end
end
