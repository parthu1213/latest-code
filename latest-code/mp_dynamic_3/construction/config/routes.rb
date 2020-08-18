# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :contacts
  get '/', to: 'home#index'
  root 'home#index'
  get 'aboutus', to: 'home#aboutus'
  get 'projects', to: 'home#projects'
  get 'services', to: 'home#services'
  get 'news', to: 'home#news'
  get 'contact_us', to: 'home#contact_us'
end
