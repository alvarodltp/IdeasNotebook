Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :docs

  root 'docs#index', as: 'authenticated_root'

  root 'welcome#index'
end
