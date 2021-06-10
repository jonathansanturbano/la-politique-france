class PartisController < ApplicationController
  def index
    @partis = Parti.order(:nom).includes(photo_attachment: :blob)
  end

  def search
    redirect_to parti_path(params[:search])
  end

  def show
    @parti = Parti.friendly.find(params[:id])
    @avis_thematiques = AvisThematique.where(parti: @parti.id).joins(:thematique).includes(thematique: [photo_attachment: :blob]).order(:titre)
  end
end
