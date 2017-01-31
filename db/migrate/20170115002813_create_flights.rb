class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
