Blog::Application.routes.draw do
  get "welcome/index"

  resources :articles, only: [:new, :create, :index, :show]

  root to: "welcome#index"
end
