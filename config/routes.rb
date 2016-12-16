Rails.application.routes.draw do


  resources :payments, only: [:create, :show, :index] 

  resources :loans, defaults: {format: :json}
end
