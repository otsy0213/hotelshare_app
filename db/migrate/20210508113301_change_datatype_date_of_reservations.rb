class ChangeDatatypeDateOfReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :total_price, :integer
    add_column :reservations, :start_date, :date
    add_column :reservations, :end_date, :date
    remove_column :reservations, :date, :string
  end
end
