class CreateAnatomies < ActiveRecord::Migration[5.0]
  def change
    create_table :anatomies do |t|
      t.string :anatomy_name

      t.timestamps
    end
  end
end
