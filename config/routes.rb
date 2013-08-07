Blog::Application.routes.draw do
  get "welcome/index"

  resources :articles, only: [
    :create, :destroy, :edit, :index, :new, :show, :update
  ]

  root to: "welcome#index"
end
