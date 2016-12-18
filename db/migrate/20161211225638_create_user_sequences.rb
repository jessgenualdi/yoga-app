class CreateUserSequences < ActiveRecord::Migration[5.0]
  def change
    create_table :user_sequences do |t|
      t.string :user_id
      t.string :integer
      t.string :sequence_id
      t.string :integer

      t.timestamps
    end
  end
end
