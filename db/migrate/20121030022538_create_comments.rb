class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.references :pin
      t.references :user

      t.timestamps
    end
    add_index :comments, :pin_id
  end
end
