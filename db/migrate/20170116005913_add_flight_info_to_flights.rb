class AddFlightInfoToFlights < ActiveRecord::Migration[5.0]
  def change
    add_column :flights, :flight_number, :datetime
    add_column :flights, :flight_time, :datetime
    add_column :flights, :checkin_time, :datetime
  end
end
