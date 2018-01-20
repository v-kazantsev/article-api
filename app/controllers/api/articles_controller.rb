class Api::ArticlesController < ApplicationController
  include Response
  include ExceptionHandler

  # GET /api/articles/:id
  # def show
  #   @article = Article.find(params[:id])
  #   json_response(@article)
  # end

  def index
    articles = Article.where("created_at >= ?", Time.zone.now.beginning_of_day)
    json_response(articles)
  end

  def by_category
    articles = Article.by_category(params[:category])
    json_response(articles)
  end

  def by_author
    articles = Article.by_author(params[:author])
    json_response(articles)
  end

end
