class AddColumnToPoses < ActiveRecord::Migration[5.0]
  def change
    add_column :poses, :sanskrit_name, :string
  end
end
