Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'contact', to: 'home#contact'
  get 'tourdetails', to: 'home#tourdetails'
  get 'topplace', to: 'home#topplace'
  get 'singleblog', to: 'home#singleblog'
  get 'blog', to: 'home#blog'
  get 'packages', to: 'home#packages'
  get 'about', to: 'home#about'
  root 'home#index'
end
