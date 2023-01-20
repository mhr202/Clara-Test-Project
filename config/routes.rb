Rails.application.routes.draw do
  resources :graphs,  only: [:index, :show]
  get "/api/graph/:id", to: "graphs#api"
end