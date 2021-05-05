class ThematiquesController < ApplicationController
  def index
    @thematiques = Thematique.all.order(:titre)
  end

  def show
    @thematique = Thematique.find(params[:id])
    @sous_thematiques = @thematique.sous_thematiques.order(:titre)
  end
end
