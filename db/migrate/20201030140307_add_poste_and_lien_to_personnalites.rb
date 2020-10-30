class AddPosteAndLienToPersonnalites < ActiveRecord::Migration[6.0]
  def change
    add_column :personnalites, :poste, :string
    add_column :personnalites, :lien, :string
  end
end
