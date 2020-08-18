Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :contacts
  root 'home#index'
  get "portfolio", to: "home#portfolio",  as: :portfolio
  get "portfolio-details", to: "home#portfoliodetails", as: :portfoliodetails
  get "about", to: "home#about", as: :about
  get "login", to: "home#login", as: :login
  get "register", to: "home#register", as: :register
  get "blog", to: "home#blog", as: :blog
  get "contact-us", to: "home#contactus", as: :contactus
end
