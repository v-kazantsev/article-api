class Api::ArticlesController < ApplicationController
  include Response
  include ExceptionHandler

  # GET /api/articles/:id
  def show
    @article = Article.find(params[:id])
    json_response(@article)
  end
end
