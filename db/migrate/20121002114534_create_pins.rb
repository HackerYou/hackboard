class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.attachment :image
      t.string :url
      t.text :description
      t.references :board

      t.timestamps
    end
    add_index :pins, :board_id
  end
end
