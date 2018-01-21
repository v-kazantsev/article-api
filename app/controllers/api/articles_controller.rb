class Api::ArticlesController < ApplicationController
  include Response
  include ExceptionHandler

  def index
    articles = Article.where("created_at >= ?", Time.zone.now.beginning_of_day)
    json_response(articles)
  end

  def show
    article = Article.find_by(params[:id]).subtitle
    json_response(article)
  end

  def by_category
    articles = Article.by_category(params[:category])
    json_response(articles)
  end

  def by_author
    articles = Article.by_author(params[:author])
    json_response(articles)
  end

  def by_tag
    articles = Tag.by_tag(params[:tag])
    json_response(articles)
  end

end
