class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.integer :price
      t.references :wedding, foreign_key: true

      t.timestamps
    end
  end
end
