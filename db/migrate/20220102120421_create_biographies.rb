class CreateBiographies < ActiveRecord::Migration[6.0]
  def change
    create_table :biographies do |t|
      t.text :content

      t.timestamps
    end
  end
end
