class AddColumnToAnatomyUser < ActiveRecord::Migration[5.0]
  def change
    add_column :anatomy_users, :user_id, :integer
  end
end
