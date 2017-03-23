class AddSuccessPageToFlight < ActiveRecord::Migration[5.0]
  def change
    add_column :flights, :success_page, :text
  end
end
