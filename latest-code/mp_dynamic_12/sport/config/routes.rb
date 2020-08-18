Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'contactus', to: 'home#contactus'
  get 'team', to: 'home#team'
  get 'bloggrid', to: 'home#bloggrid'
  get 'playergrid', to: 'home#playergrid'
  root 'home#index'
end
