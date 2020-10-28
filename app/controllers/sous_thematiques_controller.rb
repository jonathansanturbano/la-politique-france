class SousThematiquesController < ApplicationController
  def index
    @sous_thematiques = SousThematique.all
    @partis = Parti.all
  end
end
