Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#index' 
  resources :instructors
  resources :students
  resources :courses
end
