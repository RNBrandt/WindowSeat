class AddConfirmationNumber < ActiveRecord::Migration[5.0]
  def change
      add_column :flights, :confirmation_number, :string
      add_reference :flights, :user, index: true
  end
end
