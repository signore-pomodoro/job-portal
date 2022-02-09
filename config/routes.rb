Rails.application.routes.draw do
  devise_for :employers
  devise_for :applicants

  resources :jobs
  root "jobs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
