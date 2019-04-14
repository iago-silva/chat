# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations' }

  mount ActionCable.server => '/cable'

  namespace :user do
    root to: redirect("user/chatrooms/1")

    resources :chatrooms
    resources :messages
  end
end
