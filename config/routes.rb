require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  devise_for :applicants
  devise_for :employers

  resources :jobs
  root "jobs#index"
  get "employers/show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
