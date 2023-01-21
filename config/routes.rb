Rails.application.routes.draw do
  resources :graphs,  only: [:index, :show]

  namespace :api do
    namespace :v1 do
      #TODO - Create complete API & RESTFUL Routes
      resources :graphs, only: [:show]
    end
  end
end