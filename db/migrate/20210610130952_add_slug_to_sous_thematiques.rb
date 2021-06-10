class AddSlugToSousThematiques < ActiveRecord::Migration[6.0]
  def change
    add_column :sous_thematiques, :slug, :string
    add_index :sous_thematiques, :slug, unique: true
  end
end
