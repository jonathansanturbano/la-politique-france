class PartisController < ApplicationController
  def index
    @partis = Parti.all
  end

  def show
    @parti = Parti.find(params[:id])
  end
end
