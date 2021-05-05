class PartisController < ApplicationController
  def index
    @partis = Parti.order(:nom)
  end

  def show
    @parti = Parti.find(params[:id])
    @avis_thematiques = AvisThematique.where(parti: @parti.id).joins(:thematique).order(:titre)
  end
end
