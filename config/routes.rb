# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  get 'dashboard', to: 'dashboard#index'
  resources :instructors
  resources :students
  resources :courses
end
