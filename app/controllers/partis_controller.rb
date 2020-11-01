class PartisController < ApplicationController
  def index
    @partis = Parti.order(:nom)
  end

  def show
    @parti = Parti.find(params[:id])
    @avis_thematiques = AvisThematique.where(parti_id: @parti)
  end
end
