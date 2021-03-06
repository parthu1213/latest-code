Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'contacts', to: 'home#contacts'
  get 'blog', to: 'home#blog'
  get 'services', to: 'home#services'
  get 'gettaxi', to: 'home#gettaxi'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
