Rails.application.routes.draw do
  devise_for :users
  root to: "bikes#home"
  resources :users do
    resources :bikes
    resources :profiles, only: [:new, :create]
  end
  resources :incidents
end
