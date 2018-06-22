class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.references :item, foreign_key: true
      t.belongs_to :cart

      t.timestamps
    end
  end
end