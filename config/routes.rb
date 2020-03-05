Rails.application.routes.draw do
  resources :coupons, only: [:index, :new, :create]
end
