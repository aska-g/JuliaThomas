class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :street_address
      t.string :postal_code
      t.string :city
      t.string :name
      t.string :type
      t.references :wedding, foreign_key: true

      t.timestamps
    end
  end
end
