Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'contact', to: 'home#contact'
  get 'blog', to: 'home#blog'
  get 'about', to: 'home#about'
  get 'property', to: 'home#property'
  get 'agents', to: 'home#agents'
root 'home#index'
end
