class PersonnalitesController < ApplicationController
  def index
    @personnalites = Personnalite.all
  end

  def show
    @personnalite = Personnalite.find(params[:id])
  end
end
