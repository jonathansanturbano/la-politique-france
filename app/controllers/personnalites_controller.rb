class PersonnalitesController < ApplicationController
  def index
    @partis = Parti.order(:nom)
    if params[:search].nil?
      @personnalites = Personnalite.all.order(:nom)
    else
      parti = Parti.find(params[:search])
      @personnalites = Personnalite.where(parti_id: parti).order(:nom)
    end
  end

  def show
    @personnalite = Personnalite.find(params[:id])
  end
end
