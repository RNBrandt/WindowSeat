class AddPhonenumberAndNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone_number, :integer, limit: 8
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
