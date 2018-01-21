Rails.application.routes.draw do
  namespace 'api', constraints: { format: 'json' } do
    resources :articles, only: [:index, :show]
    get 'articles/by_category'
    get 'articles/by_author'
    get 'articles/by_tag'
  end
end
