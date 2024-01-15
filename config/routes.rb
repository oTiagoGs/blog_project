Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  namespace :site do
    get 'welcome/index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'site/welcome#index'
end
