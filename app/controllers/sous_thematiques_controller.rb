class SousThematiquesController < ApplicationController

  def index
    @sous_thematiques = SousThematique.all.includes(photo_attachment: :blob)
    @partis = Parti.order(:nom)
  end

  def show
    @sous_thematique = SousThematique.friendly.find(params[:id])
    @avis_sous_thematiques = AvisSousThematique.where(sous_thematique_id: @sous_thematique.id).includes(parti: [photo_attachment: :blob]).order('partis.nom').with_rich_text_rich_avis
    @partis = Parti.order(:nom)
    if !params[:search].nil?
      @avis_sous_thematiques = @avis_sous_thematiques.where(parti_id: params[:search]).includes(parti: [photo_attachment: :blob]).order('partis.nom').with_rich_text_rich_avis
    end
  end

end
