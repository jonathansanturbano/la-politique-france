class MigrateInputsToRichInputsAvisThematiques < ActiveRecord::Migration[6.0]
  def up
    AvisThematique.find_each do |avis_thematique|
      avis_thematique.update(rich_opinion_majoritaire: avis_thematique.opinion_majoritaire, rich_divergences: avis_thematique.divergences, rich_liens: avis_thematique.liens)
    end
  end

  def down
    AvisThematique.find_each do |avis_thematique|
      avis_thematique.update(opinion_majoritaire: avis_thematique.rich_opinion_majoritaire, divergences: avis_thematique.rich_divergences, liens: avis_thematique.rich_liens)
      avis_thematique.update(rich_opinion_majoritaire: nil, rich_divergences: nil, rich_liens: nil)
    end
  end
end
