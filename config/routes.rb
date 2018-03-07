Rails.application.routes.draw do
  get 'welcome/index'

  resources :docs

  root 'welcome#index'

  end
