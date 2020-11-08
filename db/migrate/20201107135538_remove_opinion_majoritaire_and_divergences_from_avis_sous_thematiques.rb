class RemoveOpinionMajoritaireAndDivergencesFromAvisSousThematiques < ActiveRecord::Migration[6.0]
  def change
    remove_column :avis_sous_thematiques, :opinion_majoritaire
    remove_column :avis_sous_thematiques, :divergences
    add_column :avis_sous_thematiques, :avis, :text
  end
end
