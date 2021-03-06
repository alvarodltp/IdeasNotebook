Rails.application.routes.draw do
 devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :docs

  authenticated :user do
  root 'docs#index', as: 'authenticated_root'
  end

  root 'welcome#index'

  get 'welcome/index'
end
