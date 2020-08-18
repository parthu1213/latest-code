Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'
  get 'cart', to: 'home#cart'
  get 'product', to: 'home#product'
  get 'category', to: 'home#category'
  get '/', to: 'home#cart'
  get 'checkout', to: 'home#checkout'
  get 'contact', to: 'home#contact'
  root 'home#index'
end
