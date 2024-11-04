Rails.application.routes.draw do
  # resources :articles
  get "/articles/test_index"  => "articles#test_index"
end
