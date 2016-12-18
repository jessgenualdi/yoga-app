class CreatePoseSequences < ActiveRecord::Migration[5.0]
  def change
    create_table :pose_sequences do |t|
      t.integer :pose_id
      t.integer :sequence_id

      t.timestamps
    end
  end
end
