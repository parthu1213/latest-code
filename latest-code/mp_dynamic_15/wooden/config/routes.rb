Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'contact', to: 'home#contact'
  get 'blog', to: 'home#blog'
  get 'services', to: 'home#services'
  get 'project', to: 'home#project'
  get 'about', to: 'home#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
