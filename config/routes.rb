Rails.application.routes.draw do


  get 'payments/index'

  resources :loans, defaults: {format: :json}
end
