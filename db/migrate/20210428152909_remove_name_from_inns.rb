class RemoveNameFromInns < ActiveRecord::Migration[6.1]
  def change
    remove_column :inns, :name, :string
  end
end
