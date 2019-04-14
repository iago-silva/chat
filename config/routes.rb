# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations' }

  namespace :user do
    root to: redirect('user/welcome'), as: :root
    get 'welcome', to: 'welcome#index'
  end
end
