class Api::ArticlesController < ApplicationController
  include Response
  include ExceptionHandler

  # GET /api/articles/:id
  # def show
  #   @article = Article.find(params[:id])
  #   json_response(@article)
  # end

  def index
    @articles = Article.where("created_at >= ?", Time.zone.now.beginning_of_day)
    json_response(@articles)
  end

  def by_category
    @articles = Article.where(category_id: Category.joins(:articles).where(name: params[:category]))
    json_response(@articles)
  end

  # def by_author
  #   @articles = Article.where(author.last_name: params[:author])
  #   json_response(@articles)
  # end

end
