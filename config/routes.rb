Rails.application.routes.draw do
  get 'payments/create'

  get 'payments/index'

  resources :loans, defaults: {format: :json}
end
