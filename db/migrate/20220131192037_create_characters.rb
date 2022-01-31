class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.float :weight
      t.integer :height
      t.text :lore

      t.timestamps
    end
  end
end
