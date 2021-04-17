class AddGenderToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :gender, :boolean
  end
end
