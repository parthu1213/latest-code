Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'about', to: 'home#about'
  get 'accomodation', to: 'home#accomodation'
  get 'gallery', to: 'home#gallery'
  get 'blog', to: 'home#blog'
  get 'blogsingle', to: 'home#blogsingle'
  get 'contact', to: 'home#contact'
root 'home#index'
end
