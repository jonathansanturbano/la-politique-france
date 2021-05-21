class ThematiquesController < ApplicationController
  def index
    # NEED TO JOIN SOUS THEMATIQUES TO AVOID N+1
    @thematiques = Thematique.all.order(:titre)
  end

  def show
    @thematique = Thematique.find(params[:id])
    @sous_thematiques = @thematique.sous_thematiques.order(:titre)
  end
end
