class CreateAnatomyUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :anatomy_users do |t|
      t.integer :anatomy_id
      t.integer :user_is

      t.timestamps
    end
  end
end
