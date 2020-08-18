Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'contact', to: 'home#contact'
  get 'blog', to: 'home#blog'
  get 'pricing', to: 'home#pricing'
  get 'department', to: 'home#department'
  get 'doctor', to: 'home#doctor'
  get 'about', to: 'home#about'
  root 'home#index'
end
