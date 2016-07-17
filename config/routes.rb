Rails.application.routes.draw do
  devise_for :admins, controllers:{
    sessions: 'admins/sessions'
  }
  
  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount ActionCable.server => '/cable'

  resources :chatrooms, only: [:index, :show, :new, :create], param: :slug
  resources :messages

  root 'chatrooms#index'
end
