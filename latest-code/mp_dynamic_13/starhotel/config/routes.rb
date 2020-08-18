Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'contact', to: 'home#contact'
  get 'blog', to: 'home#blog'
  get 'about', to: 'home#about'
  get 'gallery', to: 'home#gallery'
  get 'reservation', to: 'home#reservation'
  get 'menu', to: 'home#menu'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
