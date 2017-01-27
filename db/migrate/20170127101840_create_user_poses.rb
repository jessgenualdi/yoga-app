class CreateUserPoses < ActiveRecord::Migration[5.0]
  def change
    create_table :user_poses do |t|
      t.integer :user_id
      t.integer :pose_id

      t.timestamps
    end
  end
end
