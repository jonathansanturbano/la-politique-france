class AddThematiqueRefToSousThematiques < ActiveRecord::Migration[6.0]
  def change
    add_reference :sous_thematiques, :thematique, null: false, foreign_key: true
  end
end
