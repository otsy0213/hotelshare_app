class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :image
      t.string :name
      t.integer :age
      t.string :mail
      t.string :introduction

      t.timestamps
    end
  end
end
