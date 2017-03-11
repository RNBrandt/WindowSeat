class AddTimeZonesToFlight < ActiveRecord::Migration[5.0]
  def change
    add_column :flights, :timezone, :string
  end
end
