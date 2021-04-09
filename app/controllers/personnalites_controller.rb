class PersonnalitesController < ApplicationController
  def index
    @partis = Parti.order(:nom)
    if params[:search].nil?
      @personnalites = Personnalite.all
    else
      parti = Parti.find(params[:search])
      @personnalites = Personnalite.where(parti_id: parti)
    end
  end

  def search
    parti = Parti.find(params[:search])
    @personnalites = Personnalite.where(parti_id: parti)
  end

  def show
    @personnalite = Personnalite.find(params[:id])
  end
end
