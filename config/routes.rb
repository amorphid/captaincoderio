Blog::Application.routes.draw do
  get "/", to: "welcome#index"

  get "/welcome/index", to: "welcome#index"
end
