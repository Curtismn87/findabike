Rails.application.routes.draw do
  devise_for :users
  root to: "bikes#home"
  resources :users do
    resources :bikes
    resources :profiles
  end
  resources :incidents
end
