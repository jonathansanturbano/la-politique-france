class AddSlugToPartis < ActiveRecord::Migration[6.0]
  def change
    add_column :partis, :slug, :string
    add_index :partis, :slug, unique: true
  end
end
