class RemoveColumnAnatomyIdFromPose < ActiveRecord::Migration[5.0]
  def change
    remove_column :poses, :anatomy_id, :string
  end
end
