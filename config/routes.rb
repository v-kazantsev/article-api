Rails.application.routes.draw do
  namespace 'api' do
    resources :articles, only: :index
    get 'articles/by_category'
    get 'articles/by_author'
  end
end
