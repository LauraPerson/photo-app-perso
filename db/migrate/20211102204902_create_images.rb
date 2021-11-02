class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :name
      t.string :description
      t.string :technique
      t.string :location
      t.string :date
      t.string :camera
      t.references :serie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
