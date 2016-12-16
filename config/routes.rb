Rails.application.routes.draw do


  resources :payments, only: [:create, :show] 

  resources :loans, defaults: {format: :json}
end
