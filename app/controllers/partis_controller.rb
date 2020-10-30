class PartisController < ApplicationController
  def index
    @partis = Parti.order(:nom)
  end

  def show
    @parti = Parti.find(params[:id])
  end
end
