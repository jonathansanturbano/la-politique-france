class SousThematiquesController < ApplicationController

  def index
    @sous_thematiques = SousThematique.all
    @partis = Parti.order(:nom)
  end

  def show
    @sous_thematique = SousThematique.find(params[:id])
    @avis_sous_thematiques = AvisSousThematique.where(sous_thematique_id: @sous_thematique.id).includes(:parti).order('partis.nom')
    @partis = Parti.order(:nom)
    if !params[:search].nil?
      @avis_sous_thematiques = @avis_sous_thematiques.where(parti_id: params[:search]).includes(:parti)
    end
  end

end
