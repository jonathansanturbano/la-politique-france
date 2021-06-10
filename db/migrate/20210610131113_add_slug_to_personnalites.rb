class AddSlugToPersonnalites < ActiveRecord::Migration[6.0]
  def change
    add_column :personnalites, :slug, :string
    add_index :personnalites, :slug, unique: true
  end
end
