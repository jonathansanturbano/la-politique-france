class PagesController < ApplicationController
  def home
  end

  def about
  end

  def info
    @articles = Article.all
  end

  def search
    @results = Parti.search(params[:query], fields: ["nom"])
  end
end
