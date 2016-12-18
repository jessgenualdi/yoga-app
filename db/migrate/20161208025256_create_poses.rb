class CreatePoses < ActiveRecord::Migration[5.0]
  def change
    create_table :poses do |t|
      t.string :name
      t.string :instructions
      t.string :anatomy_id

      t.timestamps
    end
  end
end
