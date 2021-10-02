class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :inn_id
      t.string :date
      t.integer :people

      t.timestamps
    end
  end
end
