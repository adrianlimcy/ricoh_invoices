class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.string :description
      t.float :price
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
