class CreateWeddings < ActiveRecord::Migration[5.1]
  def change
    create_table :weddings do |t|
      t.datetime :date
      t.text :couple_story

      t.timestamps
    end
  end
end
