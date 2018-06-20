class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :condition
      t.integer :price

      t.timestamps
    end
  end
end
