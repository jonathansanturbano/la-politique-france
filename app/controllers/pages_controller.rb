class PagesController < ApplicationController
  def home
  end

  def about
  end

  def info
  end

  def search
    @results = Parti.search(params[:query], fields: ["nom"])
  end
end
