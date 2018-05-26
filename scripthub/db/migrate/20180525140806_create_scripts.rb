class CreateScripts < ActiveRecord::Migration[5.2]
  def change
    create_table :scripts do |t|
      t.string :script_name
      t.string :url
      t.string :platform
      t.integer :price

      t.timestamps
    end
  end
end
