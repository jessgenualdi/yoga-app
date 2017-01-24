class AddImageColumnToPoses < ActiveRecord::Migration[5.0]
  def change
    add_column :poses, :image, :string
  end
end
