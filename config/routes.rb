Rails.application.routes.draw do
  namespace 'api', constraints: { format: 'json' } do
    get 'by_category', to: 'articles#by_category'
    get 'by_author', to: 'articles#by_author'
    get 'by_tag', to: 'articles#by_tag'
    resources :articles, only: [:index, :show]

  end
end
