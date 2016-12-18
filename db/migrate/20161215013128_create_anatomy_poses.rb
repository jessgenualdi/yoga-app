class CreateAnatomyPoses < ActiveRecord::Migration[5.0]
  def change
    create_table :anatomy_poses do |t|
      t.integer :anatomy_id
      t.integer :pose_id

      t.timestamps
    end
  end
end
