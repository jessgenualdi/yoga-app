class RemoveColumnFromAnatomyUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :anatomy_users, :user_is, :integer
  end
end
