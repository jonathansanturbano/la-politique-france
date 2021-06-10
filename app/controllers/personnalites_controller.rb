class PersonnalitesController < ApplicationController
  def index
    @partis = Parti.order(:nom)
    if params[:search].nil?
      @personnalites = Personnalite.all.order(:nom).includes(parti: [photo_attachment: :blob])
    else
      parti = Parti.find(params[:search])
      @personnalites = Personnalite.where(parti_id: parti).order(:nom).includes(parti: [photo_attachment: :blob])
    end
  end

  def show
    @personnalite = Personnalite.friendly.find(params[:id])
  end
end
