class ThematiquesController < ApplicationController
  def index
    # NEED TO JOIN SOUS THEMATIQUES TO AVOID N+1
    @thematiques = Thematique.all.order(:titre).includes(photo_attachment: :blob).includes(:sous_thematiques)
  end

  def show
    @thematique = Thematique.find(params[:id])
    @sous_thematiques = @thematique.sous_thematiques.order(:titre).includes(photo_attachment: :blob)
  end
end
