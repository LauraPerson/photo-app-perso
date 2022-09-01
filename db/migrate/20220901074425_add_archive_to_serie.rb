class AddArchiveToSerie < ActiveRecord::Migration[6.0]
  def change
    add_column :series, :archive, :boolean, default: false
  end
end
