Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/', to: 'home#index'
  get 'program', to: 'home#program'
  get 'about', to: 'home#about'
  get 'blog', to: 'home#blog'
  get 'contact', to: 'home#contact'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
