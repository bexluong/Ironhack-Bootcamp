Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create, :destroy] do
    resources :products, only: [:index, :new, :show, :create, :destroy]
  end
end
