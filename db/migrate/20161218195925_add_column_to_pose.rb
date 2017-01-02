class AddColumnToPose < ActiveRecord::Migration[5.0]
  def change
    change_column :poses, :instructions, :text
  end
end
