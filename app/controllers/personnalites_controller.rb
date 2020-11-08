class PersonnalitesController < ApplicationController
  def index
    @personnalites = Personnalite.all
    @partis = Parti.order(:nom)

    return if params[:search].nil?

    parti = Parti.find(params[:search])
    @personnalites = Personnalite.where(parti_id: parti)
  end

  def search
    parti = Parti.find(params[:search])
    @personnalites = Personnalite.where(parti_id: parti)
  end

  def show
    @personnalite = Personnalite.find(params[:id])
  end
end
