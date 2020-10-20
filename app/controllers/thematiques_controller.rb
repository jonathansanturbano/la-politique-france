class ThematiquesController < ApplicationController
  def index
    @thematiques = Thematique.all
  end

  def show
    @thematique = Thematique.find(params[:id])
  end
end
