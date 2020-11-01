class AvisThematiquesController < ApplicationController
  def show
    @avis_thematique = AvisThematique.find(params[:id])
  end
end
