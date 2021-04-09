class MigrateInputsToRichInputsAvisSousThematiques < ActiveRecord::Migration[6.0]
  def up
    AvisSousThematique.find_each do |avis_sous_thematique|
      avis_sous_thematique.update(rich_avis: avis_sous_thematique.avis, rich_liens: avis_sous_thematique.liens)
    end
  end

  def down
    AvisSousThematique.find_each do |avis_sous_thematique|
      avis_sous_thematique.update(avis: avis_sous_thematique.rich_avis)
      avis_sous_thematique.update(rich_avis: nil)
    end
  end
end
