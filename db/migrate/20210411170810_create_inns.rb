class CreateInns < ActiveRecord::Migration[6.1]
  def change
    create_table :inns do |t|
      t.string :name
      t.string :introduction
      t.integer :price
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
