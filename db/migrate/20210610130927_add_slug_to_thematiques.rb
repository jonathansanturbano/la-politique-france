class AddSlugToThematiques < ActiveRecord::Migration[6.0]
  def change
    add_column :thematiques, :slug, :string
    add_index :thematiques, :slug, unique: true
  end
end
