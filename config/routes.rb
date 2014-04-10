Rails.application.routes.draw do
  root to: "widgets#index"
  resources :widgets, only: [:index, :new, :create, :show]
end
