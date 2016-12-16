Rails.application.routes.draw do

  resources :payments, only: [:create, :show, :index], defaults: {format: :json}

  resources :loans, defaults: {format: :json}
end
