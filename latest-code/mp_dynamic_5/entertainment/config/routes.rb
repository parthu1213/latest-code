Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'aboutus', to: 'home#aboutus'
  get 'service', to: 'home#service'
  get 'gallery', to: 'home#gallery'
  get 'news', to: 'home#news'
  get 'contact', to: 'home#contact'
  root 'home#index'
end
