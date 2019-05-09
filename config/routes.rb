Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :scores, only: [:index, :show, :create]
  resources :players, only: [:index, :show, :create]
end
