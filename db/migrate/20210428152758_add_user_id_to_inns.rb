class AddUserIdToInns < ActiveRecord::Migration[6.1]
  def change
    add_column :inns, :user_id, :integer
  end
end
