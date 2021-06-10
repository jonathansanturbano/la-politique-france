class AvisThematiquesController < ApplicationController
  def show
    # FIX N+1 IF NECESSARY
    @avis_thematique = AvisThematique.find(params[:id])
    @parti = Parti.find(@avis_thematique.parti_id)
    parti_id = @avis_thematique.parti_id
    thematique_id = @avis_thematique.thematique_id
    sous_thematiques = SousThematique.all.where(thematique_id: thematique_id)
    @avis_sous_thematiques = AvisSousThematique.all.where(sous_thematique_id: sous_thematiques, parti: parti_id).with_rich_text_rich_avis
  end
end
