Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
root 'home#index'
get 'about', to: 'home#about'
get 'gallery', to: 'home#gallery'
get 'blog', to: 'home#blog'
get 'contact', to: 'home#contact'
end
