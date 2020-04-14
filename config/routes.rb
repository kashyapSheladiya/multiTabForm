Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "admissions#index"
  resources :admissions
  resources :registrations
  resources :registration_steps
end
