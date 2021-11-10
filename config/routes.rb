Rails.application.routes.draw do
  root 'application#index'

  resources :parking_spaces do
    resources :reservations
  end
end
