Rails.application.routes.draw do
  
  post '/users/names', to: 'users#names'
  resources :users
  resources :exercise_workouts
  resources :workouts
  resources :exercises
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
