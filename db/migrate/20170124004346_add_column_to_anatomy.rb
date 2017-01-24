class AddColumnToAnatomy < ActiveRecord::Migration[5.0]
  def change
    add_column :anatomies, :images, :string
  end
end
