Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :sports do
    resources :numbers
    resources :trainings
    resources :players do
      resources :numbers
    end
  end

  resources :numbers
  resources :players, only: [ :new, :create]
end
